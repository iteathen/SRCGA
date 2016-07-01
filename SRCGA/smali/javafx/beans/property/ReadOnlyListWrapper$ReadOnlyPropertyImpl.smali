.class Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;
.super Ljavafx/beans/property/ReadOnlyListProperty;
.source "ReadOnlyListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ReadOnlyListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyPropertyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyListProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlyListWrapper;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/ReadOnlyListWrapper;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyListProperty;-><init>()V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/ReadOnlyListWrapper;Ljavafx/beans/property/ReadOnlyListWrapper$1;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/ReadOnlyListWrapper;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/ReadOnlyListWrapper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyListWrapper;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;)V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V

    .line 219
    return-void
.end method

.method private fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 223
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 200
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
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 210
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper;->emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->get()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper;->get()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 205
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
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 215
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyListWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyListWrapper;->sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlyListWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method
