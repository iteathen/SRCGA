.class Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;
.super Ljavafx/beans/binding/BooleanBinding;
.source "TextAreaSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextAreaSkin;-><init>(Ljavafx/scene/control/TextArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

.field final synthetic val$textArea:Ljavafx/scene/control/TextArea;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V
    .locals 9

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->val$textArea:Ljavafx/scene/control/TextArea;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 592
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 595
    .local v1, "txt":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea;->getPromptText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 596
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

    .line 597
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$3;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
