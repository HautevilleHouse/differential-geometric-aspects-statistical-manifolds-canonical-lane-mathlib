import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure ExponentialConnectionPackage where
  carrier: Type u
  connection: Type v
  torsionFree: Prop
  metricCompatible: Prop
  parallelTransportDefined: Prop
  alphaFamily: ℝ → Type w

def ExponentialConnectionClosed (C: ExponentialConnectionPackage): Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.parallelTransportDefined

theorem exponential_connection_closed_from_fields (C: ExponentialConnectionPackage): ExponentialConnectionClosed C := by
  exact And.intro C.torsionFree (And.intro C.metricCompatible C.parallelTransportDefined)

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
