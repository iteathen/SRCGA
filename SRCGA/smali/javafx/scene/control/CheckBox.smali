.class public Ljavafx/scene/control/CheckBox;
.super Ljavafx/scene/control/ButtonBase;
.source "CheckBox.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "check-box"

.field private static final PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;


# instance fields
.field private allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

.field private indeterminate:Ljavafx/beans/property/BooleanProperty;

.field private selected:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "determinate"

    .line 257
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    .line 258
    const-string v0, "indeterminate"

    .line 259
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

    .line 260
    const-string v0, "selected"

    .line 261
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    .line 260
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 88
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/CheckBox;->initialize()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckBox;->setText(Ljava/lang/String;)V

    .line 98
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/CheckBox;->initialize()V

    .line 99
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "check-box"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 103
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->CHECK_BOX:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 104
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 105
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setMnemonicParsing(Z)V

    .line 108
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/CheckBox;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public final allowIndeterminateProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 204
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "allowIndeterminate"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/CheckBox;->allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

    .line 207
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CheckBoxSkin;-><init>(Ljavafx/scene/control/CheckBox;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return-object v0
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isAllowIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setIndeterminate(Z)V

    .line 239
    :cond_0
    :goto_0
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->fireEvent(Ljavafx/event/Event;)V

    .line 241
    :cond_1
    return-void

    .line 229
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 231
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBox;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setSelected(Z)V

    .line 233
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setIndeterminate(Z)V

    goto :goto_0

    .line 236
    :cond_4
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox;->isSelected()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setSelected(Z)V

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setIndeterminate(Z)V

    goto :goto_0

    .line 236
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final indeterminateProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 130
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/CheckBox$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/CheckBox$1;-><init>(Ljavafx/scene/control/CheckBox;Z)V

    iput-object v2, v1, Ljavafx/scene/control/CheckBox;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    .line 149
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return-object v0
.end method

.method public final isAllowIndeterminate()Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CheckBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->allowIndeterminate:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isIndeterminate()Z
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CheckBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CheckBox;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->selected:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/CheckBox$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 275
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "this":Ljavafx/scene/control/CheckBox;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/CheckBox;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 274
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/CheckBox;->isIndeterminate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final selectedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 165
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/CheckBox$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/CheckBox$2;-><init>(Ljavafx/scene/control/CheckBox;)V

    iput-object v2, v1, Ljavafx/scene/control/CheckBox;->selected:Ljavafx/beans/property/BooleanProperty;

    .line 183
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox;->selected:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox;
    return-object v0
.end method

.method public final setAllowIndeterminate(Z)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox;->allowIndeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 196
    return-void
.end method

.method public final setIndeterminate(Z)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 122
    return-void
.end method

.method public final setSelected(Z)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 157
    return-void
.end method
