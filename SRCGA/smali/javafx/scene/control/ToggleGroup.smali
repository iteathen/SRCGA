.class public Ljavafx/scene/control/ToggleGroup;
.super Ljava/lang/Object;
.source "ToggleGroup.java"


# static fields
.field private static final USER_DATA_KEY:Ljava/lang/Object;


# instance fields
.field private properties:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field private final toggles:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/control/ToggleGroup;->USER_DATA_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ToggleGroup$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/ToggleGroup$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/ToggleGroup$1;-><init>(Ljavafx/scene/control/ToggleGroup;)V

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ToggleGroup$2;-><init>(Ljavafx/scene/control/ToggleGroup;Ljavafx/collections/ObservableList;)V

    iput-object v2, v1, Ljavafx/scene/control/ToggleGroup;->toggles:Ljavafx/collections/ObservableList;

    .line 119
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ToggleGroup$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ToggleGroup$3;-><init>(Ljavafx/scene/control/ToggleGroup;)V

    iput-object v2, v1, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 61
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/ToggleGroup;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->toggles:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/ToggleGroup;Ljavafx/scene/control/Toggle;Z)Z
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ToggleGroup;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Toggle;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ToggleGroup;->setSelected(Ljavafx/scene/control/Toggle;Z)Z

    move-result v3

    move v0, v3

    .end local v0    # "x0":Ljavafx/scene/control/ToggleGroup;
    return v0
.end method

.method private setSelected(Ljavafx/scene/control/Toggle;Z)Z
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, p1

    .local v1, "toggle":Ljavafx/scene/control/Toggle;
    move v2, p2

    .local v2, "selected":Z
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 164
    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v3

    move-object v4, v0

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 165
    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljavafx/scene/control/Toggle;->setSelected(Z)V

    .line 167
    const/4 v3, 0x1

    move v0, v3

    .line 169
    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method final clearSelectedToggle()V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Toggle;

    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Toggle;

    move-object v2, v3

    .line 176
    .local v2, "toggle":Ljavafx/scene/control/Toggle;
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    .line 182
    .end local v2    # "toggle":Ljavafx/scene/control/Toggle;
    :goto_1
    return-void

    .line 179
    .restart local v2    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_0
    goto :goto_0

    .line 181
    .end local v2    # "toggle":Ljavafx/scene/control/Toggle;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 182
    goto :goto_1
.end method

.method public final getProperties()Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 205
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/ToggleGroup;->properties:Ljavafx/collections/ObservableMap;

    .line 207
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method public final getSelectedToggle()Ljavafx/scene/control/Toggle;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Toggle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method public final getToggles()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->toggles:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroup;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/ToggleGroup;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final selectToggle(Ljavafx/scene/control/Toggle;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Toggle;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectedToggleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleGroup;->selectedToggle:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleGroup;
    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ToggleGroup;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ToggleGroup;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 233
    return-void
.end method
