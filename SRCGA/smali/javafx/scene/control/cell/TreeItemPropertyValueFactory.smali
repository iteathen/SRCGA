.class public Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;
.super Ljava/lang/Object;
.source "TreeItemPropertyValueFactory.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
        "<TS;TT;>;",
        "Ljavafx/beans/value/ObservableValue",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private columnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private previousProperty:Ljava/lang/String;

.field private final property:Ljava/lang/String;

.field private propertyRef:Lcom/sun/javafx/property/PropertyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/property/PropertyReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "property"
        .end annotation
    .end param

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->property:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private getCellDataReflectively(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    move-object v1, p1

    .local v1, "rowData":Ljava/lang/Object;, "TS;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 161
    .end local v0    # "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    :goto_0
    return-object v0

    .line 132
    .restart local v0    # "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->columnClass:Ljava/lang/Class;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->previousProperty:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->columnClass:Ljava/lang/Class;

    move-object v5, v1

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->previousProperty:Ljava/lang/String;

    move-object v5, v0

    .line 134
    invoke-virtual {v5}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->columnClass:Ljava/lang/Class;

    .line 138
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->previousProperty:Ljava/lang/String;

    .line 139
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/property/PropertyReference;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/property/PropertyReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->propertyRef:Lcom/sun/javafx/property/PropertyReference;

    .line 142
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->propertyRef:Lcom/sun/javafx/property/PropertyReference;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/property/PropertyReference;->getProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyProperty;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 143
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 146
    .local v2, "e":Ljava/lang/IllegalStateException;
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->propertyRef:Lcom/sun/javafx/property/PropertyReference;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/property/PropertyReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 147
    .local v3, "value":Ljava/lang/Object;, "TT;"
    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    goto :goto_0

    .line 148
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 153
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    move-object v3, v4

    .line 154
    .local v3, "logger":Lsun/util/logging/PlatformLogger;
    move-object v4, v3

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not retrieve property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getProperty()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in TreeItemPropertyValueFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with provided class type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 157
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    .line 155
    invoke-virtual {v4, v5, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_4
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->call(Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;)Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    return-object v0
.end method

.method public call(Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;)Ljavafx/beans/value/ObservableValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures",
            "<TS;TT;>;)",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    move-object v1, p1

    .local v1, "param":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->getValue()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 117
    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->getCellDataReflectively(Ljava/lang/Object;)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    return-object v0
.end method

.method public final getProperty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;->property:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TreeItemPropertyValueFactory;, "Ljavafx/scene/control/cell/TreeItemPropertyValueFactory<TS;TT;>;"
    return-object v0
.end method
