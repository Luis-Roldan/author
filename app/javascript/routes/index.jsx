import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";

const AppRoutes = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} /> {/* Ruta para la página Home */}

      </Routes>
    </Router>
  );
};

export default AppRoutes;
