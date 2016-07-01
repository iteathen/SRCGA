.class public Ljavafx/scene/control/cell/MapValueFactory;
.super Ljava/lang/Object;
.source "MapValueFactory.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TableColumn$CellDataFeatures",
        "<",
        "Ljava/util/Map;",
        "TT;>;",
        "Ljavafx/beans/value/ObservableValue",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "key"
        .end annotation
    .end param

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/MapValueFactory;->key:Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableColumn$CellDataFeatures;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/MapValueFactory;->call(Ljavafx/scene/control/TableColumn$CellDataFeatures;)Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    return-object v0
.end method

.method public call(Ljavafx/scene/control/TableColumn$CellDataFeatures;)Ljavafx/beans/value/ObservableValue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<",
            "Ljava/util/Map;",
            "TT;>;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "cdf":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<Ljava/util/Map;TT;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumn$CellDataFeatures;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v2, v4

    .line 92
    .local v2, "map":Ljava/util/Map;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/MapValueFactory;->key:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 96
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/beans/value/ObservableValue;

    if-eqz v4, :cond_0

    .line 97
    move-object v4, v3

    check-cast v4, Ljavafx/beans/value/ObservableValue;

    move-object v0, v4

    .line 127
    .end local v0    # "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "this":Ljavafx/scene/control/cell/MapValueFactory;, "Ljavafx/scene/control/cell/MapValueFactory<TT;>;"
    :cond_0
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 113
    new-instance v4, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Z)V

    move-object v0, v4

    goto :goto_0

    .line 114
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(I)V

    move-object v0, v4

    goto :goto_0

    .line 116
    :cond_2
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 117
    new-instance v4, Ljavafx/beans/property/ReadOnlyFloatWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyFloatWrapper;-><init>(F)V

    move-object v0, v4

    goto :goto_0

    .line 118
    :cond_3
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 119
    new-instance v4, Ljavafx/beans/property/ReadOnlyLongWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyLongWrapper;-><init>(J)V

    move-object v0, v4

    goto :goto_0

    .line 120
    :cond_4
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_5

    .line 121
    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(D)V

    move-object v0, v4

    goto :goto_0

    .line 122
    :cond_5
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 123
    new-instance v4, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 127
    :cond_6
    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_0
.end method
