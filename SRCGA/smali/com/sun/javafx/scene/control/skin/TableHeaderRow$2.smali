.class Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;
.super Ljavafx/scene/layout/StackPane;
.source "TableHeaderRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TableHeaderRow;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkinBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

.field final synthetic val$image:Ljavafx/scene/layout/StackPane;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;Ljavafx/scene/layout/StackPane;)V
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 20

    .prologue
    .line 201
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v8}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 202
    .local v2, "imageWidth":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v8}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 204
    .local v4, "imageHeight":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 205
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->val$image:Ljavafx/scene/layout/StackPane;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->getWidth()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->getHeight()D

    move-result-wide v14

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    sget-object v18, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v19, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v6 .. v19}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$2;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 207
    return-void
.end method
