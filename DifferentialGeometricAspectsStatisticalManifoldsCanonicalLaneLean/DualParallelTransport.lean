import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure DualParallelTransportPackage where
  dualConnection: Type u
  parallelTransport: Type v
  dualityRelation: Prop
  alphaOneConnection: Type w
  alphaMinusOneConnection: Type x
  dualityEstablished: Prop

def DualParallelTransportClosed (D: DualParallelTransportPackage): Prop :=
  D.dualityRelation ∧ D.dualityEstablished

theorem dual_parallel_transport_closed_from_fields (D: DualParallelTransportPackage): DualParallelTransportClosed D := by
  exact And.intro D.dualityRelation D.dualityEstablished

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse
