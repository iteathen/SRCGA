.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
.super Ljavafx/scene/layout/StackPane;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;->val$this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeMaxWidth(D)D
    .locals 7

    .prologue
    .line 362
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    move-wide v2, p1

    .local v2, "height":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 358
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    move-wide v2, p1

    .local v2, "height":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    return-wide v1
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    sget-object v1, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;
    return-object v0
.end method
