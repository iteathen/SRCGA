.class public abstract Ljavafx/beans/property/SetPropertyBase;
.super Ljavafx/beans/property/SetProperty;
.source "SetPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/SetPropertyBase$Listener;,
        Ljavafx/beans/property/SetPropertyBase$EmptyProperty;,
        Ljavafx/beans/property/SetPropertyBase$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/SetProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/SetPropertyBase",
            "<TE;>.EmptyProperty;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/SetExpressionHelper",
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
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final setChangeListener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/SetPropertyBase",
            "<TE;>.SizeProperty;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
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

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/SetProperty;-><init>()V

    .line 53
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/beans/property/SetPropertyBase$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/SetPropertyBase;)Ljavafx/collections/SetChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->setChangeListener:Ljavafx/collections/SetChangeListener;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/SetProperty;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/SetPropertyBase$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/SetPropertyBase;)Ljavafx/collections/SetChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->setChangeListener:Ljavafx/collections/SetChangeListener;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 80
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    .line 81
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->setChangeListener:Ljavafx/collections/SetChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/SetPropertyBase;)Ljavafx/collections/ObservableSet;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/SetPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/property/SetPropertyBase;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/beans/property/SetPropertyBase;Ljavafx/collections/ObservableSet;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/SetPropertyBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableSet;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->markInvalid(Ljavafx/collections/ObservableSet;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/SetPropertyBase;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->lambda$new$29(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/SetPropertyBase;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->lambda$new$29(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    if-eqz v1, :cond_0

    .line 207
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/SetPropertyBase$SizeProperty;->fireValueChangedEvent()V

    .line 209
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    if-eqz v1, :cond_1

    .line 210
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/SetPropertyBase$EmptyProperty;->fireValueChangedEvent()V

    .line 212
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$29(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/SetPropertyBase;->invalidateProperties()V

    .line 55
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/SetPropertyBase;->invalidated()V

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V

    .line 57
    return-void
.end method

.method private markInvalid(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    if-eqz v2, :cond_1

    .line 216
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 217
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->setChangeListener:Ljavafx/collections/SetChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 219
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    .line 220
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/SetPropertyBase;->invalidateProperties()V

    .line 221
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/SetPropertyBase;->invalidated()V

    .line 222
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/SetPropertyBase;->fireValueChangedEvent()V

    .line 224
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 150
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 160
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 170
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "newObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/SetPropertyBase;->unbind()V

    .line 276
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 277
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 278
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SetPropertyBase$Listener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/beans/property/SetPropertyBase$Listener;-><init>(Ljavafx/beans/property/SetPropertyBase;)V

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 280
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 281
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    invoke-direct {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->markInvalid(Ljavafx/collections/ObservableSet;)V

    .line 283
    :cond_2
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    if-nez v1, :cond_0

    .line 119
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SetPropertyBase$EmptyProperty;-><init>(Ljavafx/beans/property/SetPropertyBase;Ljavafx/beans/property/SetPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    .line 121
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->empty0:Ljavafx/beans/property/SetPropertyBase$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V

    .line 189
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 203
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/SetPropertyBase;->get()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    if-nez v1, :cond_0

    .line 241
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    :goto_0
    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    .line 242
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    .line 243
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->setChangeListener:Ljavafx/collections/SetChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 247
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-object v0

    .line 241
    .restart local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 155
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 165
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 175
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/collections/ObservableSet;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/SetPropertyBase;->set(Ljavafx/collections/ObservableSet;)V

    return-void
.end method

.method public set(Ljavafx/collections/ObservableSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "newValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/SetPropertyBase;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
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

    invoke-virtual {v6}, Ljavafx/beans/property/SetPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/SetPropertyBase;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 254
    invoke-virtual {v7}, Ljavafx/beans/property/SetPropertyBase;->getBean()Ljava/lang/Object;

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

    invoke-virtual {v7}, Ljavafx/beans/property/SetPropertyBase;->getName()Ljava/lang/String;

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

    .line 256
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    .line 257
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 258
    .local v2, "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    .line 259
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/SetPropertyBase;->markInvalid(Ljavafx/collections/ObservableSet;)V

    .line 261
    .end local v2    # "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    :cond_2
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    if-nez v1, :cond_0

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SetPropertyBase$SizeProperty;-><init>(Ljavafx/beans/property/SetPropertyBase;Ljavafx/beans/property/SetPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    .line 91
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->size0:Ljavafx/beans/property/SetPropertyBase$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/SetPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 301
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/SetPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 302
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "SetProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 303
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 304
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

    .line 306
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 307
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

    .line 309
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/SetPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/SetPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 312
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/SetPropertyBase;->get()Ljavafx/collections/ObservableSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    return-object v0

    .line 314
    .restart local v0    # "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 317
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/SetPropertyBase;->get()Ljavafx/collections/ObservableSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase;, "Ljavafx/beans/property/SetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 288
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->value:Ljavafx/collections/ObservableSet;

    .line 289
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/SetPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 290
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/SetPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 292
    :cond_0
    return-void
.end method
