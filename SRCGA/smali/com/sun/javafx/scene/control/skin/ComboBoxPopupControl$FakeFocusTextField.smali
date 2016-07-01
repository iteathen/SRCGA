.class public final Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
.super Ljavafx/scene/control/TextField;
.source "ComboBoxPopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FakeFocusTextField"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextField;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 538
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TextField;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    :goto_0
    return-object v0

    .line 537
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public requestFocus()V
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 521
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->requestFocus()V

    .line 523
    :cond_0
    return-void
.end method

.method public setFakeFocus(Z)V
    .locals 4

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->setFocused(Z)V

    .line 527
    return-void
.end method
