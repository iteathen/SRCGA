.class Ljavafx/scene/control/ControlUtils;
.super Ljava/lang/Object;
.source "ControlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Control;ILjavafx/scene/control/Skin;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/ControlUtils;->lambda$scrollToIndex$606(Ljavafx/scene/control/Control;ILjavafx/scene/control/Skin;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/Skin;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/ControlUtils;->lambda$scrollToColumn$607(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/Skin;)V

    return-void
.end method

.method static buildClearAndSelectChange(Ljavafx/collections/ObservableList;Ljava/util/List;I)Ljavafx/collections/ListChangeListener$Change;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljavafx/collections/ListChangeListener$Change",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v1, p1

    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move v2, p2

    .local v2, "retainedRow":I
    new-instance v3, Ljavafx/scene/control/ControlUtils$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ControlUtils$1;-><init>(Ljavafx/collections/ObservableList;Ljava/util/List;I)V

    move-object v0, v3

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    return-object v0
.end method

.method private static synthetic lambda$scrollToColumn$607(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;Ljavafx/scene/control/Skin;)V
    .locals 11

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "skin":Ljavafx/scene/control/Skin;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ScrollToEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToColumn()Ljavafx/event/EventType;

    move-result-object v8

    move-object v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/ScrollToEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Control;->fireEvent(Ljavafx/event/Event;)V

    .line 50
    return-void
.end method

.method private static synthetic lambda$scrollToIndex$606(Ljavafx/scene/control/Control;ILjavafx/scene/control/Skin;)V
    .locals 11

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "skin":Ljavafx/scene/control/Skin;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ScrollToEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToTopIndex()Ljavafx/event/EventType;

    move-result-object v8

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/ScrollToEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 44
    return-void
.end method

.method static requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "c":Ljavafx/scene/control/Control;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v1, v4

    .line 55
    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 56
    .local v2, "focusOwner":Ljavafx/scene/Node;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 57
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->requestFocus()V

    .line 68
    :cond_0
    :goto_1
    return-void

    .line 55
    .end local v2    # "focusOwner":Ljavafx/scene/Node;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v4

    goto :goto_0

    .line 58
    .restart local v2    # "focusOwner":Ljavafx/scene/Node;
    :cond_2
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 60
    .local v3, "p":Ljavafx/scene/Parent;
    :goto_2
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 61
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->requestFocus()V

    .line 63
    goto :goto_1

    .line 65
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_2
.end method

.method public static scrollToColumn(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Control;",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "column":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/ControlUtils$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Control;Ljavafx/scene/control/TableColumnBase;)Ljava/util/function/Consumer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 51
    return-void
.end method

.method public static scrollToIndex(Ljavafx/scene/control/Control;I)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "control":Ljavafx/scene/control/Control;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/ControlUtils$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Control;I)Ljava/util/function/Consumer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method
