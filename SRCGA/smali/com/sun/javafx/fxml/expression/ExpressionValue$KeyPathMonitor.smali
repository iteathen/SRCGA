.class Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
.super Ljava/lang/Object;
.source "ExpressionValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/expression/ExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyPathMonitor"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private listChangeListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mapChangeListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private namespace:Ljava/lang/Object;

.field private next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

.field private propertyChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/fxml/expression/ExpressionValue;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/fxml/expression/ExpressionValue;Ljava/util/Iterator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v1, p1

    move-object v2, p2

    .local v2, "keyPathIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->this$0:Lcom/sun/javafx/fxml/expression/ExpressionValue;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    .line 55
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;-><init>(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)V

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->listChangeListener:Ljavafx/collections/ListChangeListener;

    .line 69
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;-><init>(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)V

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    .line 79
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;-><init>(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)V

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->propertyChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 88
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    .line 90
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;-><init>(Lcom/sun/javafx/fxml/expression/ExpressionValue;Ljava/util/Iterator;)V

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    return-object v0
.end method


# virtual methods
.method public monitor(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_1

    .line 100
    move-object v4, v1

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 114
    .end local v1    # "namespace":Ljava/lang/Object;
    :goto_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    if-eqz v4, :cond_0

    .line 117
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 118
    .local v2, "value":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->monitor(Ljava/lang/Object;)V

    .line 122
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    return-void

    .line 101
    .restart local v1    # "namespace":Ljava/lang/Object;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljavafx/collections/ObservableMap;

    if-eqz v4, :cond_2

    .line 102
    move-object v4, v1

    check-cast v4, Ljavafx/collections/ObservableMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v4, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    .line 105
    .local v2, "namespaceAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getPropertyModel(Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v4

    move-object v3, v4

    .line 107
    .local v3, "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 108
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->propertyChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 111
    :cond_3
    move-object v4, v2

    move-object v1, v4

    .local v1, "namespace":Lcom/sun/javafx/fxml/BeanAdapter;
    goto :goto_0
.end method

.method public remonitor()V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-virtual {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->unmonitor()V

    .line 149
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 150
    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->monitor(Ljava/lang/Object;)V

    .line 154
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public unmonitor()V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    instance-of v3, v3, Ljavafx/collections/ObservableList;

    if-eqz v3, :cond_2

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 139
    :cond_0
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    .line 141
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    if-eqz v3, :cond_1

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->next:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-virtual {v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->unmonitor()V

    .line 144
    :cond_1
    return-void

    .line 128
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    instance-of v3, v3, Ljavafx/collections/ObservableMap;

    if-eqz v3, :cond_3

    .line 129
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_0

    .line 130
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->namespace:Ljava/lang/Object;

    check-cast v3, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v1, v3

    .line 132
    .local v1, "namespaceAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getPropertyModel(Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v2, v3

    .line 134
    .local v2, "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->propertyChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_0
.end method
