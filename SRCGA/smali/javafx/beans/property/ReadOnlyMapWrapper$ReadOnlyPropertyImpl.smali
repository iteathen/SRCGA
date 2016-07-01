.class Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;
.super Ljavafx/beans/property/ReadOnlyMapProperty;
.source "ReadOnlyMapWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ReadOnlyMapWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyPropertyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyMapProperty",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/ReadOnlyMapWrapper;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyMapProperty;-><init>()V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/ReadOnlyMapWrapper;Ljavafx/beans/property/ReadOnlyMapWrapper$1;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/ReadOnlyMapWrapper;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/ReadOnlyMapWrapper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyMapWrapper;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;)V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V

    .line 219
    return-void
.end method

.method private fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 223
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 190
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 200
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 210
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper;->emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->get()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper;->get()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 195
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 205
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 215
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyMapWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper;->sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method
