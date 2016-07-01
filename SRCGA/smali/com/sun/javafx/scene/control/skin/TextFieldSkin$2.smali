.class Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;
.super Ljavafx/beans/binding/StringBinding;
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
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->val$textField:Ljavafx/scene/control/TextField;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 189
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v7}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->maskText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$2;
    return-object v0
.end method
