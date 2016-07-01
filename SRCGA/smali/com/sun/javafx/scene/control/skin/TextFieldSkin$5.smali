.class Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;
.super Ljavafx/beans/binding/BooleanBinding;
.source "TextFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

.field final synthetic val$textField:Ljavafx/scene/control/TextField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;Ljavafx/scene/control/TextField;)V
    .locals 9

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->val$textField:Ljavafx/scene/control/TextField;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 266
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->val$textField:Ljavafx/scene/control/TextField;

    .line 267
    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    aput-object v7, v5, v6

    .line 266
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->bind([Ljavafx/beans/Observable;)V

    .line 268
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 271
    .local v1, "txt":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getPromptText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 272
    .local v2, "promptTxt":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 273
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->promptTextFill:Ljavafx/beans/property/ObjectProperty;

    .line 274
    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Paint;

    sget-object v4, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$5;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
