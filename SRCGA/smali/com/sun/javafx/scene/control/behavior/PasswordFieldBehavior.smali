.class public Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
.source "PasswordFieldBehavior.java"


# direct methods
.method public constructor <init>(Ljavafx/scene/control/PasswordField;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;
    move-object v1, p1

    .local v1, "passwordField":Ljavafx/scene/control/PasswordField;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;-><init>(Ljavafx/scene/control/TextField;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected deleteNextWord()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected deletePreviousWord()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected mouseDoubleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->selectAll()V

    .line 55
    return-void
.end method

.method protected nextWord()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected previousWord()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected selectNextWord()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected selectPreviousWord()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected selectWord()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/PasswordFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->selectAll()V

    .line 52
    return-void
.end method
