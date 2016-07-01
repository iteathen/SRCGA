.class Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
.super Ljavafx/beans/binding/ObjectBinding;
.source "TextFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/ObjectBinding",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

.field final synthetic val$textField:Ljavafx/scene/control/TextField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)V
    .locals 9

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->val$textField:Ljavafx/scene/control/TextField;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 196
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->highlightTextFill:Ljavafx/beans/property/ObjectProperty;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->computeValue()Ljavafx/scene/paint/Paint;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    return-object v0
.end method

.method protected computeValue()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->highlightTextFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->textFill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method
