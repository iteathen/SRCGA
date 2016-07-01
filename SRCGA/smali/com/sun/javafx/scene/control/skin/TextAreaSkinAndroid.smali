.class public Lcom/sun/javafx/scene/control/skin/TextAreaSkinAndroid;
.super Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
.source "TextAreaSkinAndroid.java"


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TextArea;)V
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkinAndroid;
    move-object v1, p1

    .local v1, "textArea":Ljavafx/scene/control/TextArea;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;-><init>(Ljavafx/scene/control/TextArea;)V

    .line 37
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkinAndroid$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkinAndroid$1;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkinAndroid;Ljavafx/scene/control/TextArea;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 49
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->show()V

    .line 52
    :cond_0
    return-void
.end method
