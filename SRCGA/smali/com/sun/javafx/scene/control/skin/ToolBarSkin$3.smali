.class Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->boxAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Pos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Pos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ToolBar;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    # getter for: Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    const-string v1, "boxAlignment"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Pos;

    move-object v1, v2

    .line 274
    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_0

    .line 275
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/VBox;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/VBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/HBox;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    goto :goto_0
.end method
