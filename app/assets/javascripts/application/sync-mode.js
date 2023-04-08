/** @type {boolean} */
mumuki.incognitoUser;
mumuki.syncMode = (() => {

  /**
   * Syncs progress and solutions
   * from local storage
   */
  class ClientSyncMode {
    syncState() {
      this.syncProgress();

      const lastSubmission = mumuki.SubmissionsStore.getLastSubmissionAndResult(mumuki.exercise.id);
      if (lastSubmission) {
        this.syncEditorContent(lastSubmission.submission);
        this.syncResults(lastSubmission.result);
      }
    }

    syncProgress() {
      mumuki.progress.updateProgressListItems($anchor => this._getProgressListItemClass($anchor));
    }

    /**
     * @param {Submission} submission
     */
    syncEditorContent(submission) {
      const content = mumuki.SubmissionsStore.submissionSolutionContent(submission);
      mumuki.editors.setContent(content);
    }

    /**
     * @param {SubmissionResult} result
     */
    syncResults(result) {
      const $submissionsResultsArea = $('.submission-results');
      $submissionsResultsArea.html(result.html);
    }

    /**
     * @param {JQuery} $item
     */
    _getProgressListItemClass($item) {
      const exerciseId = $item.data('mu-exercise-id');
      const status = mumuki.SubmissionsStore.getLastSubmissionStatus(exerciseId);
      return mumuki.renderers.progressListItemClassForStatus(
        status,
        exerciseId == mumuki.exercise.id,
        $item.hasClass('status-icon'));
    }

  }

  /**
   * Syncs progress and solutions from server.
   *
   * This class does nothing actually, since a server-side behaviour is the default one
   * and no additional actions are needed.
   */
  class ServerSyncMode {
    syncState() {
      // nothing
    }
  }


  /** Selects the most appropriate sync mode */
  function _selectSyncMode() {
    if (mumuki.incognitoUser) {
      mumuki.syncMode._current = new ClientSyncMode();
    } else {
      mumuki.syncMode._current = new ServerSyncMode();
    }
  }

  return {
    ServerSyncMode,
    ClientSyncMode,

    _selectSyncMode,

    /** @type {ClientSyncMode|ServerSyncMode}*/
    _current: null
  };
})();

mumuki.load(() => {
  mumuki.syncMode._selectSyncMode();
  mumuki.syncMode._current.syncState();
});
