(* techmap_celltype = "$_DFF_N_ $_DFF_P_" *)
module $_DFF_x_(input C, D, output Q);
  parameter [0:0] _TECHMAP_WIREINIT_Q_ = 1'bx;
  parameter _TECHMAP_CELLTYPE_ = "";
  generate if (_TECHMAP_WIREINIT_Q_ === 1'b1)
    wire _TECHMAP_FAIL_ = 1;
  else if (_TECHMAP_CELLTYPE_ == "$_DFF_N_") begin
    wire D_;
    $__DFF_N__$abc9_flop #(.INIT(_TECHMAP_WIREINIT_Q_)) _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q), .n1(D_));
    $_DFF_N_ ff (.C(C), .D(D_), .Q(Q));
  end
  else if (_TECHMAP_CELLTYPE_ == "$_DFF_P_") begin
    wire D_;
    $__DFF_P__$abc9_flop #(.INIT(_TECHMAP_WIREINIT_Q_)) _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q), .n1(D_));
    $_DFF_P_ ff (.C(C), .D(D_), .Q(Q));
  end
  else if (_TECHMAP_CELLTYPE_ != "")
    $error("Unrecognised _TECHMAP_CELLTYPE_");
  endgenerate
  wire _TECHMAP_REMOVEINIT_Q_ = 1;
endmodule
