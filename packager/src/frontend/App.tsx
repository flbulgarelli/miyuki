import { createHashRouter, RouterProvider } from 'react-router-dom';
import './App.css'
import { PrinciplesAndLicense } from './components/principlesAndLicense/PrinciplesAndLicense';
import { Loading } from './components/loading/Loading';


const router = createHashRouter([
  {
    path: "/loading",
    element: <Loading />
  },
  {
    path: "/principles-and-license",
    element: <PrinciplesAndLicense />
  }
])


function App() {
  return (
    <RouterProvider router={router} />
  );
}

export default App
