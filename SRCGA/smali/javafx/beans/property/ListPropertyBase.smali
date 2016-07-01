.class public abstract Ljavafx/beans/property/ListPropertyBase;
.super Ljavafx/beans/property/ListProperty;
.source "ListPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ListPropertyBase$Listener;,
        Ljavafx/beans/property/ListPropertyBase$EmptyProperty;,
        Ljavafx/beans/property/ListPropertyBase$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ListProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ListPropertyBase",
            "<TE;>.EmptyProperty;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listChangeListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ListPropertyBase",
            "<TE;>.SizeProperty;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ListProperty;-><init>()V

    .line 53
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/beans/property/ListPropertyBase$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/ListPropertyBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->listChangeListener:Ljavafx/collections/ListChangeListener;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ListProperty;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/ListPropertyBase$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/ListPropertyBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->listChangeListener:Ljavafx/collections/ListChangeListener;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 80
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    .line 81
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/ListPropertyBase;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ListPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/property/ListPropertyBase;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/beans/property/ListPropertyBase;Ljavafx/collections/ObservableList;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ListPropertyBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableList;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->markInvalid(Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/ListPropertyBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->lambda$new$27(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/ListPropertyBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->lambda$new$27(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    if-eqz v1, :cond_0

    .line 205
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ListPropertyBase$SizeProperty;->fireValueChangedEvent()V

    .line 207
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    if-eqz v1, :cond_1

    .line 208
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ListPropertyBase$EmptyProperty;->fireValueChangedEvent()V

    .line 210
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$27(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ListPropertyBase;->invalidateProperties()V

    .line 55
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ListPropertyBase;->invalidated()V

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 57
    return-void
.end method

.method private markInvalid(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    if-eqz v2, :cond_1

    .line 214
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 215
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 217
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    .line 218
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ListPropertyBase;->invalidateProperties()V

    .line 219
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ListPropertyBase;->invalidated()V

    .line 220
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ListPropertyBase;->fireValueChangedEvent()V

    .line 222
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 148
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 158
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 168
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "newObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ListPropertyBase;->unbind()V

    .line 274
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 275
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 276
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ListPropertyBase$Listener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/beans/property/ListPropertyBase$Listener;-><init>(Ljavafx/beans/property/ListPropertyBase;)V

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 278
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 279
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    invoke-direct {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->markInvalid(Ljavafx/collections/ObservableList;)V

    .line 281
    :cond_2
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ListPropertyBase$EmptyProperty;-><init>(Ljavafx/beans/property/ListPropertyBase;Ljavafx/beans/property/ListPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    .line 120
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->empty0:Ljavafx/beans/property/ListPropertyBase$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V

    .line 187
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 201
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ListPropertyBase;->get()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    if-nez v1, :cond_0

    .line 239
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    :goto_0
    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    .line 240
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    .line 241
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 245
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-object v0

    .line 239
    .restart local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 234
    .local p0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 153
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 163
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 173
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/collections/ObservableList;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ListPropertyBase;->set(Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method public set(Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "newValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/ListPropertyBase;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/ListPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/ListPropertyBase;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 252
    invoke-virtual {v7}, Ljavafx/beans/property/ListPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/beans/property/ListPropertyBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "A bound value cannot be set."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 254
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    .line 255
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 256
    .local v2, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    .line 257
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ListPropertyBase;->markInvalid(Ljavafx/collections/ObservableList;)V

    .line 259
    .end local v2    # "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_2
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    if-nez v1, :cond_0

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ListPropertyBase$SizeProperty;-><init>(Ljavafx/beans/property/ListPropertyBase;Ljavafx/beans/property/ListPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    .line 91
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->size0:Ljavafx/beans/property/ListPropertyBase$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ListPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 299
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ListPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 300
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ListProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 301
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 302
    move-object v4, v3

    const-string v5, "bean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 304
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    move-object v4, v3

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 307
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ListPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 308
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/ListPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 310
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ListPropertyBase;->get()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    return-object v0

    .line 312
    .restart local v0    # "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 315
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ListPropertyBase;->get()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 286
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->value:Ljavafx/collections/ObservableList;

    .line 287
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ListPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 288
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ListPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 290
    :cond_0
    return-void
.end method
