.class public Ljavafx/scene/control/ProgressIndicator;
.super Ljavafx/scene/control/Control;
.source "ProgressIndicator.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "progress-indicator"

.field public static final INDETERMINATE_PROGRESS:D = -1.0

.field private static final PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;


# instance fields
.field private indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private progress:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const-string v0, "determinate"

    .line 221
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    .line 227
    const-string v0, "indeterminate"

    .line 228
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ProgressIndicator;-><init>(D)V

    .line 89
    return-void
.end method

.method public constructor <init>(D)V
    .locals 11

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ProgressIndicator;
    move-wide v2, p1

    .local v2, "progress":D
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;-><init>()V

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ProgressIndicator;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    check-cast v5, Ljavafx/css/StyleableProperty;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 100
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ProgressIndicator;->setProgress(D)V

    .line 101
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/ProgressIndicator;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "progress-indicator"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 102
    move-object v5, v1

    sget-object v6, Ljavafx/scene/AccessibleRole;->PROGRESS_INDICATOR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ProgressIndicator;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 105
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-wide v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    move v4, v5

    .line 106
    .local v4, "c":I
    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

    move v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ProgressIndicator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 107
    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    move v7, v4

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ProgressIndicator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 108
    return-void

    .line 106
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Ljavafx/scene/control/ProgressIndicator;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/ProgressIndicator;Z)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ProgressIndicator;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ProgressIndicator;->setIndeterminate(Z)V

    return-void
.end method

.method private indeterminatePropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator;->indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 135
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ProgressIndicator$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ProgressIndicator$1;-><init>(Ljavafx/scene/control/ProgressIndicator;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ProgressIndicator;->indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 153
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator;->indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-object v0
.end method

.method private setIndeterminate(Z)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ProgressIndicator;->indeterminatePropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 123
    return-void
.end method


# virtual methods
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
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;-><init>(Ljavafx/scene/control/ProgressIndicator;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-object v0
.end method

.method public final getProgress()D
    .locals 4

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ProgressIndicator;->progress:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ProgressIndicator;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ProgressIndicator;->progress:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-object v0
.end method

.method public final indeterminateProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ProgressIndicator;->indeterminatePropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-object v0
.end method

.method public final isIndeterminate()Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator;->indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ProgressIndicator;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator;->indeterminate:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final progressProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ProgressIndicator;->progress:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 172
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/ProgressIndicator$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ProgressIndicator$2;-><init>(Ljavafx/scene/control/ProgressIndicator;D)V

    iput-object v3, v2, Ljavafx/scene/control/ProgressIndicator;->progress:Ljavafx/beans/property/DoubleProperty;

    .line 188
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ProgressIndicator;->progress:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ProgressIndicator;
    return-object v1
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 251
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ProgressIndicator;
    move-object v2, p1

    .local v2, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/ProgressIndicator$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 256
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/control/ProgressIndicator;
    :goto_0
    return-object v1

    .line 252
    .restart local v1    # "this":Ljavafx/scene/control/ProgressIndicator;
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 253
    :pswitch_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 254
    :pswitch_2
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 255
    :pswitch_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setProgress(D)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->progressProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 164
    return-void
.end method
