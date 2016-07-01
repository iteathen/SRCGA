.class Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;
.super Ljavafx/beans/property/ReadOnlySetProperty;
.source "ReadOnlySetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ReadOnlySetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyPropertyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlySetProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlySetWrapper;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/ReadOnlySetWrapper;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlySetProperty;-><init>()V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/ReadOnlySetWrapper;Ljavafx/beans/property/ReadOnlySetWrapper$1;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/ReadOnlySetWrapper;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/ReadOnlySetWrapper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlySetWrapper;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;)V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V

    .line 219
    return-void
.end method

.method private fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 223
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

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
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 200
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
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 210
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper;->emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->get()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper;->get()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

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
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 205
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
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 215
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlySetWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlySetWrapper;->sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>.ReadOnlyPropertyImpl;"
    return-object v0
.end method
