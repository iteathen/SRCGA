.class public Ljavafx/scene/control/PasswordField;
.super Ljavafx/scene/control/TextField;
.source "PasswordField.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PasswordField;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextField;-><init>()V

    .line 41
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PasswordField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "password-field"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 42
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->PASSWORD_FIELD:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/PasswordField;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 43
    return-void
.end method


# virtual methods
.method public copy()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public cut()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PasswordField;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/PasswordField$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 76
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TextField;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PasswordField;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "this":Ljavafx/scene/control/PasswordField;
    :pswitch_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
