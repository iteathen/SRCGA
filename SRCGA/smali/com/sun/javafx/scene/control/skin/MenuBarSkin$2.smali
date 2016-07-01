.class Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "MenuBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacingProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    # getter for: Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->SPACING:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$900()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    const-string v1, "spacing"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 807
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;->get()D

    move-result-wide v4

    move-wide v2, v4

    .line 808
    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/HBox;->setSpacing(D)V

    .line 809
    return-void
.end method
