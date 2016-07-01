.class Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "MenuBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Pos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/MenuBar;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    # getter for: Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    const-string v1, "containerAlignment"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Pos;

    move-object v1, v2

    .line 846
    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/HBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 847
    return-void
.end method
