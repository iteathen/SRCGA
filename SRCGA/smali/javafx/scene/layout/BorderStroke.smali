.class public Ljavafx/scene/layout/BorderStroke;
.super Ljava/lang/Object;
.source "BorderStroke.java"


# static fields
.field public static final DEFAULT_WIDTHS:Ljavafx/scene/layout/BorderWidths;

.field public static final MEDIUM:Ljavafx/scene/layout/BorderWidths;

.field public static final THICK:Ljavafx/scene/layout/BorderWidths;

.field public static final THIN:Ljavafx/scene/layout/BorderWidths;


# instance fields
.field final bottomStroke:Ljavafx/scene/paint/Paint;

.field final bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

.field private final hash:I

.field final innerEdge:Ljavafx/geometry/Insets;

.field final insets:Ljavafx/geometry/Insets;

.field final leftStroke:Ljavafx/scene/paint/Paint;

.field final leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

.field final outerEdge:Ljavafx/geometry/Insets;

.field private final radii:Ljavafx/scene/layout/CornerRadii;

.field final rightStroke:Ljavafx/scene/paint/Paint;

.field final rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

.field private final strokeUniform:Z

.field final topStroke:Ljavafx/scene/paint/Paint;

.field final topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

.field final widths:Ljavafx/scene/layout/BorderWidths;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/BorderWidths;-><init>(D)V

    sput-object v0, Ljavafx/scene/layout/BorderStroke;->THIN:Ljavafx/scene/layout/BorderWidths;

    .line 56
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/BorderWidths;-><init>(D)V

    sput-object v0, Ljavafx/scene/layout/BorderStroke;->MEDIUM:Ljavafx/scene/layout/BorderWidths;

    .line 61
    new-instance v0, Ljavafx/scene/layout/BorderWidths;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/BorderWidths;-><init>(D)V

    sput-object v0, Ljavafx/scene/layout/BorderStroke;->THICK:Ljavafx/scene/layout/BorderWidths;

    .line 67
    sget-object v0, Ljavafx/scene/layout/BorderStroke;->THIN:Ljavafx/scene/layout/BorderWidths;

    sput-object v0, Ljavafx/scene/layout/BorderStroke;->DEFAULT_WIDTHS:Ljavafx/scene/layout/BorderWidths;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/CornerRadii;Ljavafx/scene/layout/BorderWidths;)V
    .locals 24
    .param p1    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stroke"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "style"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/layout/CornerRadii;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radii"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/layout/BorderWidths;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "widths"
        .end annotation
    .end param

    .prologue
    .line 193
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v3, p1

    .local v3, "stroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v4, p2

    .local v4, "style":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v5, p3

    .local v5, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v6, p4

    .local v6, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object v7, v2

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 196
    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v3

    if-nez v11, :cond_0

    sget-object v11, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v10, v23

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    iput-object v12, v11, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    iput-object v11, v10, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    iput-object v10, v9, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    .line 197
    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v4

    if-nez v11, :cond_1

    sget-object v11, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_1
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v10, v23

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    iput-object v12, v11, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    iput-object v11, v10, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    iput-object v10, v9, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 198
    move-object v7, v2

    move-object v8, v5

    if-nez v8, :cond_2

    sget-object v8, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    :goto_2
    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    .line 199
    move-object v7, v2

    move-object v8, v6

    if-nez v8, :cond_3

    sget-object v8, Ljavafx/scene/layout/BorderStroke;->DEFAULT_WIDTHS:Ljavafx/scene/layout/BorderWidths;

    :goto_3
    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    .line 200
    move-object v7, v2

    sget-object v8, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    .line 207
    move-object v7, v2

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v8, v8, Ljavafx/scene/layout/BorderWidths;->left:D

    move-object v10, v2

    iget-object v10, v10, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v10, v10, Ljavafx/scene/layout/BorderWidths;->top:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v8, v8, Ljavafx/scene/layout/BorderWidths;->left:D

    move-object v10, v2

    iget-object v10, v10, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v10, v10, Ljavafx/scene/layout/BorderWidths;->right:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v8, v8, Ljavafx/scene/layout/BorderWidths;->left:D

    move-object v10, v2

    iget-object v10, v10, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    iget-wide v10, v10, Ljavafx/scene/layout/BorderWidths;->bottom:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, v7, Ljavafx/scene/layout/BorderStroke;->strokeUniform:Z

    .line 212
    move-object v7, v2

    new-instance v8, Ljavafx/geometry/Insets;

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v10, v2

    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 213
    invoke-virtual {v11}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v11

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v10

    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 214
    invoke-virtual {v13}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v13

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v12

    move-object v14, v2

    move-object v15, v2

    iget-object v15, v15, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 215
    invoke-virtual {v15}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v16

    invoke-direct/range {v14 .. v17}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v17, v0

    .line 216
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v18

    invoke-direct/range {v16 .. v19}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v16

    invoke-direct/range {v9 .. v17}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    .line 218
    move-object v7, v2

    new-instance v8, Ljavafx/geometry/Insets;

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const-wide/16 v10, 0x0

    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 219
    invoke-virtual {v13}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v13

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    move-object v14, v2

    move-object v15, v2

    iget-object v15, v15, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 220
    invoke-virtual {v15}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v16

    invoke-direct/range {v14 .. v17}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v17, v0

    .line 221
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v18

    invoke-direct/range {v16 .. v19}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v19, v0

    .line 222
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v20

    invoke-direct/range {v18 .. v21}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    invoke-direct/range {v9 .. v17}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v8, v7, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    .line 224
    move-object v7, v2

    move-object v8, v2

    invoke-direct {v8}, Ljavafx/scene/layout/BorderStroke;->preComputeHash()I

    move-result v8

    iput v8, v7, Ljavafx/scene/layout/BorderStroke;->hash:I

    .line 225
    return-void

    .line 196
    :cond_0
    move-object v11, v3

    goto/16 :goto_0

    .line 197
    :cond_1
    move-object v11, v4

    goto/16 :goto_1

    .line 198
    :cond_2
    move-object v8, v5

    goto/16 :goto_2

    .line 199
    :cond_3
    move-object v8, v6

    goto/16 :goto_3

    .line 207
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public constructor <init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/CornerRadii;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;)V
    .locals 18
    .param p1    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "stroke"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "style"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/layout/CornerRadii;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radii"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/layout/BorderWidths;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "widths"
        .end annotation
    .end param
    .param p5    # Ljavafx/geometry/Insets;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "insets"
        .end annotation
    .end param

    .prologue
    .line 237
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v1, p1

    .local v1, "stroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v2, p2

    .local v2, "style":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v3, p3

    .local v3, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v4, p4

    .local v4, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v5, p5

    .local v5, "insets":Ljavafx/geometry/Insets;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v2

    move-object v12, v2

    move-object v13, v2

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v17}, Ljavafx/scene/layout/BorderStroke;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/CornerRadii;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/CornerRadii;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;)V
    .locals 33
    .param p1    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topStroke"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "rightStroke"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomStroke"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "leftStroke"
        .end annotation
    .end param
    .param p5    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topStyle"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "rightStyle"
        .end annotation
    .end param
    .param p7    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomStyle"
        .end annotation
    .end param
    .param p8    # Ljavafx/scene/layout/BorderStrokeStyle;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "leftStyle"
        .end annotation
    .end param
    .param p9    # Ljavafx/scene/layout/CornerRadii;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radii"
        .end annotation
    .end param
    .param p10    # Ljavafx/scene/layout/BorderWidths;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "widths"
        .end annotation
    .end param
    .param p11    # Ljavafx/geometry/Insets;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "insets"
        .end annotation
    .end param

    .prologue
    .line 260
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v3, p1

    .local v3, "topStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v4, p2

    .local v4, "rightStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v5, p3

    .local v5, "bottomStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v6, p4

    .local v6, "leftStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v7, p5

    .local v7, "topStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v8, p6

    .local v8, "rightStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v9, p7

    .local v9, "bottomStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v10, p8

    .local v10, "leftStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v11, p9

    .local v11, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v12, p10

    .local v12, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v13, p11

    .local v13, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 261
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    if-nez v18, :cond_0

    sget-object v18, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    .line 262
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    if-nez v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    .line 263
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    if-nez v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    .line 264
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    if-nez v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    .line 265
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    if-nez v18, :cond_4

    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 266
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    if-nez v18, :cond_5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 267
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    if-nez v18, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 268
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    if-nez v18, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 269
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    if-nez v18, :cond_8

    sget-object v18, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    .line 270
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    if-nez v18, :cond_9

    sget-object v18, Ljavafx/scene/layout/BorderStroke;->DEFAULT_WIDTHS:Ljavafx/scene/layout/BorderWidths;

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    .line 271
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    if-nez v18, :cond_a

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    .line 274
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    .line 275
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    .line 276
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    move-object/from16 v18, v0

    .line 277
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_b
    move/from16 v14, v17

    .line 278
    .local v14, "colorsSame":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->top:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->right:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->left:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->bottom:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_c
    move/from16 v15, v17

    .line 282
    .local v15, "widthsSame":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    .line 283
    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    .line 284
    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v18, v0

    .line 285
    invoke-virtual/range {v17 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_d
    move/from16 v16, v17

    .line 287
    .local v16, "stylesSame":Z
    move-object/from16 v17, v2

    move/from16 v18, v14

    if-eqz v18, :cond_e

    move/from16 v18, v15

    if-eqz v18, :cond_e

    move/from16 v18, v16

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    :goto_e
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/layout/BorderStroke;->strokeUniform:Z

    .line 292
    move-object/from16 v17, v2

    new-instance v18, Ljavafx/geometry/Insets;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v20, v0

    .line 293
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v24

    invoke-direct/range {v22 .. v25}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v22, v0

    .line 294
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v24, v0

    .line 295
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v27

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v28

    invoke-direct/range {v26 .. v29}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v26, v0

    .line 296
    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v26

    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v29

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v30

    invoke-direct/range {v28 .. v31}, Ljavafx/scene/layout/BorderStroke;->computeInside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v28

    add-double v26, v26, v28

    invoke-direct/range {v19 .. v27}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    .line 298
    move-object/from16 v17, v2

    new-instance v18, Ljavafx/geometry/Insets;

    move-object/from16 v32, v18

    move-object/from16 v18, v32

    move-object/from16 v19, v32

    const-wide/16 v20, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v23, v0

    .line 299
    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v24

    invoke-direct/range {v22 .. v25}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v22

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v24

    sub-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v25, v0

    .line 300
    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v24

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v26

    sub-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v27, v0

    .line 301
    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v27

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v28

    invoke-direct/range {v26 .. v29}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v26

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v28

    sub-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v29, v0

    .line 302
    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v29

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v30

    invoke-direct/range {v28 .. v31}, Ljavafx/scene/layout/BorderStroke;->computeOutside(Ljavafx/scene/shape/StrokeType;D)D

    move-result-wide v28

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v30

    sub-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    invoke-direct/range {v19 .. v27}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    .line 304
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->preComputeHash()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ljavafx/scene/layout/BorderStroke;->hash:I

    .line 305
    return-void

    .line 261
    .end local v14    # "colorsSame":Z
    .end local v15    # "widthsSame":Z
    .end local v16    # "stylesSame":Z
    :cond_0
    move-object/from16 v18, v3

    goto/16 :goto_0

    .line 262
    :cond_1
    move-object/from16 v18, v4

    goto/16 :goto_1

    .line 263
    :cond_2
    move-object/from16 v18, v5

    goto/16 :goto_2

    .line 264
    :cond_3
    move-object/from16 v18, v6

    goto/16 :goto_3

    .line 265
    :cond_4
    move-object/from16 v18, v7

    goto/16 :goto_4

    .line 266
    :cond_5
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 267
    :cond_6
    move-object/from16 v18, v9

    goto/16 :goto_6

    .line 268
    :cond_7
    move-object/from16 v18, v10

    goto/16 :goto_7

    .line 269
    :cond_8
    move-object/from16 v18, v11

    goto/16 :goto_8

    .line 270
    :cond_9
    move-object/from16 v18, v12

    goto/16 :goto_9

    .line 271
    :cond_a
    move-object/from16 v18, v13

    goto/16 :goto_a

    .line 277
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 278
    .restart local v14    # "colorsSame":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_c

    .line 285
    .restart local v15    # "widthsSame":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 287
    .restart local v16    # "stylesSame":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_e
.end method

.method private computeInside(Ljavafx/scene/shape/StrokeType;D)D
    .locals 10

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/shape/StrokeType;
    move-wide v2, p2

    .local v2, "width":D
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_0

    .line 325
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 329
    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :goto_0
    return-wide v0

    .line 326
    .restart local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :cond_0
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_1

    .line 327
    move-wide v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 328
    :cond_1
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_2

    .line 329
    move-wide v4, v2

    move-wide v0, v4

    goto :goto_0

    .line 331
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Unexpected Stroke Type"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private computeOutside(Ljavafx/scene/shape/StrokeType;D)D
    .locals 10

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/shape/StrokeType;
    move-wide v2, p2

    .local v2, "width":D
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_0

    .line 337
    move-wide v4, v2

    move-wide v0, v4

    .line 341
    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :goto_0
    return-wide v0

    .line 338
    .restart local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :cond_0
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_1

    .line 339
    move-wide v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 340
    :cond_1
    move-object v4, v1

    sget-object v5, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v4, v5, :cond_2

    .line 341
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0

    .line 343
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Unexpected Stroke Type"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private preComputeHash()I
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, v2

    .line 310
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 311
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 312
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 313
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderStrokeStyle;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 314
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderStrokeStyle;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 315
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderStrokeStyle;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 316
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderStrokeStyle;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 317
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderWidths;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 318
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    invoke-virtual {v3}, Ljavafx/scene/layout/CornerRadii;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 319
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    invoke-virtual {v3}, Ljavafx/geometry/Insets;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 320
    move v2, v1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 367
    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :goto_0
    return v0

    .line 352
    .restart local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 353
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/BorderStroke;

    move-object v2, v3

    .line 354
    .local v2, "that":Ljavafx/scene/layout/BorderStroke;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/BorderStroke;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/BorderStroke;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 355
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 356
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 357
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 358
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 359
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/CornerRadii;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 360
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 361
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 362
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 363
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 364
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderWidths;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 365
    :cond_d
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    invoke-virtual {v3, v4}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 367
    :cond_e
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0
.end method

.method public final getBottomStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->bottomStroke:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getBottomStyle()Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->bottomStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->insets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getLeftStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->leftStroke:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getLeftStyle()Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->leftStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getRadii()Ljavafx/scene/layout/CornerRadii;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->radii:Ljavafx/scene/layout/CornerRadii;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getRightStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->rightStroke:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getRightStyle()Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->rightStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getTopStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->topStroke:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getTopStyle()Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->topStyle:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public final getWidths()Ljavafx/scene/layout/BorderWidths;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStroke;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BorderStroke;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return v0
.end method

.method public final isStrokeUniform()Z
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStroke;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderStroke;->strokeUniform:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStroke;
    return v0
.end method
