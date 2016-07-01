.class public Ljavafx/scene/control/Label;
.super Ljavafx/scene/control/Labeled;
.source "Label.java"


# instance fields
.field private labelFor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mnemonicStateListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;-><init>()V

    .line 104
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/Label$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/Label;->mnemonicStateListener:Ljavafx/beans/value/ChangeListener;

    .line 65
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Label;->initialize()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Labeled;-><init>(Ljava/lang/String;)V

    .line 104
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/Label$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/Label;->mnemonicStateListener:Ljavafx/beans/value/ChangeListener;

    .line 74
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Label;->initialize()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Labeled;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 104
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/Label$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/Label;->mnemonicStateListener:Ljavafx/beans/value/ChangeListener;

    .line 84
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Label;->initialize()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Label;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label;->mnemonicStateListener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Label;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Label;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Label;->lambda$new$2(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Label;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Label;->lambda$new$2(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/Label;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Label;->lambda$new$2(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "label"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 89
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 95
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method private synthetic lambda$new$2(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Label;->impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    .line 106
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
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/LabelSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabelSkin;-><init>(Ljavafx/scene/control/Label;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label;
    return-object v0
.end method

.method public final getLabelFor()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label;->labelFor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Label;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label;->labelFor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label;
    return-object v0
.end method

.method public labelForProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label;->labelFor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 115
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Label$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Label$1;-><init>(Ljavafx/scene/control/Label;)V

    iput-object v2, v1, Ljavafx/scene/control/Label;->labelFor:Ljavafx/beans/property/ObjectProperty;

    .line 143
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label;->labelFor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label;
    return-object v0
.end method

.method public final setLabelFor(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->labelForProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method
