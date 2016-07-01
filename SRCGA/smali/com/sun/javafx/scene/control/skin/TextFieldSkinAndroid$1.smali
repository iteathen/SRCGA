.class Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;
.super Ljava/lang/Object;
.source "TextFieldSkinAndroid.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;-><init>(Ljavafx/scene/control/TextField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;

.field final synthetic val$textField:Ljavafx/scene/control/TextField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;Ljavafx/scene/control/TextField;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;->val$textField:Ljavafx/scene/control/TextField;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "wasFocused":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "isFocused":Ljava/lang/Boolean;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;->val$textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->show()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->hide()V

    goto :goto_0
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
