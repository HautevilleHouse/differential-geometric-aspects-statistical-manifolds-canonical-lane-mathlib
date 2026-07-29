import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure GammaConnectionPackage where
  underlyingManifold : Type u
  christoffelSymbols : Type v
  torsionFree : Prop
  metricCompatible : Prop
  alphaFamily : Type w

def GammaConnectionClosed (G : GammaConnectionPackage) : Prop :=
  G.torsionFree ∧ G.metricCompatible

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse