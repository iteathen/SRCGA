.class Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;
.super Ljava/lang/Object;
.source "ComboBoxPopupControl.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<",
        "Ljavafx/scene/control/Skinnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;->this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 238
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;->this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getPopupContent()Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    return-object v0
.end method

.method public getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;->this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;"
    return-object v0
.end method
