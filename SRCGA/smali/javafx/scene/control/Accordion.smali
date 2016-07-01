.class public Ljavafx/scene/control/Accordion;
.super Ljavafx/scene/control/Control;
.source "Accordion.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "accordion"


# instance fields
.field private expandedPane:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            ">;"
        }
    .end annotation
.end field

.field private final panes:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/control/TitledPane;

    invoke-direct {v1, v2}, Ljavafx/scene/control/Accordion;-><init>([Ljavafx/scene/control/TitledPane;)V

    .line 76
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/TitledPane;)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, p1

    .local v1, "titledPanes":[Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 105
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Accordion$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Accordion$1;-><init>(Ljavafx/scene/control/Accordion;)V

    iput-object v3, v2, Ljavafx/scene/control/Accordion;->panes:Ljavafx/collections/ObservableList;

    .line 131
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Accordion$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Accordion$2;-><init>(Ljavafx/scene/control/Accordion;)V

    iput-object v3, v2, Ljavafx/scene/control/Accordion;->expandedPane:Ljavafx/beans/property/ObjectProperty;

    .line 85
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "accordion"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 87
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 95
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Accordion;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Accordion;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Accordion;->expandedPane:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Accordion;
    return-object v0
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
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/AccordionSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/AccordionSkin;-><init>(Ljavafx/scene/control/Accordion;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion;
    return-object v0
.end method

.method public final expandedPaneProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Accordion;->expandedPane:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion;
    return-object v0
.end method

.method public final getExpandedPane()Ljavafx/scene/control/TitledPane;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Accordion;->expandedPane:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TitledPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion;
    return-object v0
.end method

.method public final getPanes()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Accordion;->panes:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion;
    return-object v0
.end method

.method public final setExpandedPane(Ljavafx/scene/control/TitledPane;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion;->expandedPaneProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
