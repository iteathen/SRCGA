.class Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->spacingProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    # getter for: Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    const-string v1, "spacing"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 231
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->get()D

    move-result-wide v4

    move-wide v2, v4

    .line 232
    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ToolBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ToolBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_0

    .line 233
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/VBox;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ToolBarSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ToolBarSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/HBox;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/HBox;->setSpacing(D)V

    goto :goto_0
.end method
