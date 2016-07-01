.class public Lcom/sun/javafx/fxml/expression/ExpressionValue;
.super Ljavafx/beans/value/ObservableValueBase;
.source "ExpressionValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/value/ObservableValueBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private argumentMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private expression:Lcom/sun/javafx/fxml/expression/Expression;

.field private listenerCount:I

.field private namespace:Ljava/lang/Object;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/sun/javafx/fxml/expression/Expression;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "expression":Lcom/sun/javafx/fxml/expression/Expression;
    move-object/from16 v3, p3

    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/beans/value/ObservableValueBase;-><init>()V

    .line 163
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    .line 166
    move-object v7, v1

    if-nez v7, :cond_0

    .line 167
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 170
    :cond_0
    move-object v7, v2

    if-nez v7, :cond_1

    .line 171
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 174
    :cond_1
    move-object v7, v3

    if-nez v7, :cond_2

    .line 175
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 178
    :cond_2
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->namespace:Ljava/lang/Object;

    .line 179
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->expression:Lcom/sun/javafx/fxml/expression/Expression;

    .line 180
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->type:Ljava/lang/Class;

    .line 182
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/fxml/expression/Expression;->getArguments()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 183
    .local v4, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->argumentMonitors:Ljava/util/ArrayList;

    .line 185
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/fxml/expression/KeyPath;

    move-object v6, v7

    .line 186
    .local v6, "argument":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/expression/ExpressionValue;->argumentMonitors:Ljava/util/ArrayList;

    new-instance v8, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/fxml/expression/KeyPath;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;-><init>(Lcom/sun/javafx/fxml/expression/ExpressionValue;Ljava/util/Iterator;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 187
    goto :goto_0

    .line 188
    .end local v6    # "argument":Lcom/sun/javafx/fxml/expression/KeyPath;
    :cond_3
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->fireValueChangedEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->fireValueChangedEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->fireValueChangedEvent()V

    return-void
.end method

.method private monitorArguments()V
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->argumentMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v2, v3

    .line 237
    .local v2, "argumentMonitor":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue;->namespace:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->monitor(Ljava/lang/Object;)V

    .line 238
    goto :goto_0

    .line 239
    .end local v2    # "argumentMonitor":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    :cond_0
    return-void
.end method

.method private unmonitorArguments()V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->argumentMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v2, v3

    .line 243
    .local v2, "argumentMonitor":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->unmonitor()V

    .line 244
    goto :goto_0

    .line 245
    .end local v2    # "argumentMonitor":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    if-nez v2, :cond_0

    .line 198
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->monitorArguments()V

    .line 201
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/value/ObservableValueBase;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 202
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    .line 203
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Object;>;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    if-nez v2, :cond_0

    .line 218
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->monitorArguments()V

    .line 221
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/value/ObservableValueBase;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 222
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    .line 223
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/ExpressionValue;->expression:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->namespace:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/fxml/expression/Expression;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->type:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/value/ObservableValueBase;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 208
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    .line 210
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    if-nez v2, :cond_0

    .line 211
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->unmonitorArguments()V

    .line 213
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/value/ObservableValueBase;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 228
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    .line 230
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue;->listenerCount:I

    if-nez v2, :cond_0

    .line 231
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->unmonitorArguments()V

    .line 233
    :cond_0
    return-void
.end method
