.class public Ljavafx/scene/control/Button;
.super Ljavafx/scene/control/ButtonBase;
.source "Button.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "button"

.field private static final PSEUDO_CLASS_CANCEL:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_DEFAULT:Ljavafx/css/PseudoClass;


# instance fields
.field private cancelButton:Ljavafx/beans/property/BooleanProperty;

.field private defaultButton:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const-string v0, "default"

    .line 210
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Button;->PSEUDO_CLASS_DEFAULT:Ljavafx/css/PseudoClass;

    .line 211
    const-string v0, "cancel"

    .line 212
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Button;->PSEUDO_CLASS_CANCEL:Ljavafx/css/PseudoClass;

    .line 211
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 72
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Button;->initialize()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ButtonBase;-><init>(Ljava/lang/String;)V

    .line 82
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Button;->initialize()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 93
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Button;->initialize()V

    .line 94
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Ljavafx/scene/control/Button;->PSEUDO_CLASS_DEFAULT:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Ljavafx/scene/control/Button;->PSEUDO_CLASS_CANCEL:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "button"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 98
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Button;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 99
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Button;->setMnemonicParsing(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public final cancelButtonProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->cancelButton:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 156
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Button$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Button$2;-><init>(Ljavafx/scene/control/Button;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Button;->cancelButton:Ljavafx/beans/property/BooleanProperty;

    .line 172
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->cancelButton:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button;
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
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ButtonSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;-><init>(Ljavafx/scene/control/Button;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button;
    return-object v0
.end method

.method public final defaultButtonProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->defaultButton:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 122
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Button$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Button$1;-><init>(Ljavafx/scene/control/Button;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Button;->defaultButton:Ljavafx/beans/property/BooleanProperty;

    .line 138
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->defaultButton:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button;
    return-object v0
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Button;->fireEvent(Ljavafx/event/Event;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final isCancelButton()Z
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->cancelButton:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Button;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->cancelButton:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isDefaultButton()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->defaultButton:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Button;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button;->defaultButton:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final setCancelButton(Z)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Button;->cancelButtonProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 149
    return-void
.end method

.method public final setDefaultButton(Z)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Button;->defaultButtonProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 115
    return-void
.end method
