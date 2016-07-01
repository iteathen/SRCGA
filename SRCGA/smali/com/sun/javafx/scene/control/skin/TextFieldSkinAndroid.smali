.class public Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
.super Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
.source "TextFieldSkinAndroid.java"


# static fields
.field public static final MOBILEBULLET:C = '\u2022'


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TextField;)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;)V

    .line 42
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid$1;-><init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;Ljavafx/scene/control/TextField;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 54
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->show()V

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected maskText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    move-object v1, p1

    .local v1, "txt":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    instance-of v5, v5, Ljavafx/scene/control/PasswordField;

    if-eqz v5, :cond_1

    .line 66
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 67
    .local v2, "n":I
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    .line 68
    .local v3, "passwordBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 69
    move-object v5, v3

    const/16 v6, 0x2022

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 74
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    .end local v2    # "n":I
    .end local v3    # "passwordBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :goto_1
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkinAndroid;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    goto :goto_1
.end method
