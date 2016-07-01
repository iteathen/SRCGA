.class public final Ljavafx/scene/web/WebHistory;
.super Ljava/lang/Object;
.source "WebHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/web/WebHistory$Entry;
    }
.end annotation


# instance fields
.field private final bfl:Lcom/sun/webkit/BackForwardList;

.field private final currentIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private final list:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/web/WebHistory$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:Ljavafx/beans/property/IntegerProperty;

.field private final ulist:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/web/WebHistory$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/webkit/WebPage;)V
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, p1

    .local v1, "page":Lcom/sun/webkit/WebPage;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 219
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "currentIndex"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/web/WebHistory;->currentIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 158
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/web/WebHistory;->list:Ljavafx/collections/ObservableList;

    .line 159
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebHistory;->list:Ljavafx/collections/ObservableList;

    invoke-static {v3}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/web/WebHistory;->ulist:Ljavafx/collections/ObservableList;

    .line 160
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/webkit/WebPage;->createBackForwardList()Lcom/sun/webkit/BackForwardList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/web/WebHistory;->bfl:Lcom/sun/webkit/BackForwardList;

    .line 162
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebHistory;->getMaxSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebHistory;->setMaxSize(I)V

    .line 164
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebHistory;->bfl:Lcom/sun/webkit/BackForwardList;

    new-instance v3, Ljavafx/scene/web/WebHistory$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/web/WebHistory$1;-><init>(Ljavafx/scene/web/WebHistory;)V

    invoke-virtual {v2, v3}, Lcom/sun/webkit/BackForwardList;->addChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V

    .line 217
    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->bfl:Lcom/sun/webkit/BackForwardList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebHistory;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->list:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebHistory;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/web/WebHistory;I)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebHistory;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/web/WebHistory;->setCurrentIndex(I)V

    return-void
.end method

.method private setCurrentIndex(I)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebHistory;->currentIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 237
    return-void
.end method


# virtual methods
.method public currentIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->currentIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory;
    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebHistory;->currentIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory;
    return v0
.end method

.method public getEntries()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/web/WebHistory$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->ulist:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory;
    return-object v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebHistory;->maxSizeProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory;
    return v0
.end method

.method public go(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move v1, p1

    .local v1, "offset":I
    move v3, v1

    if-nez v3, :cond_0

    .line 306
    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebHistory;->getCurrentIndex()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    move v2, v3

    .line 309
    .local v2, "index":I
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 310
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the effective index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is out of the range [0.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/web/WebHistory;->list:Ljavafx/collections/ObservableList;

    .line 312
    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebHistory;->bfl:Lcom/sun/webkit/BackForwardList;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/webkit/BackForwardList;->setCurrentIndex(I)V

    .line 315
    goto :goto_0
.end method

.method public maxSizeProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 9

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->maxSize:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 253
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebHistory$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "maxSize"

    const/16 v7, 0x64

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/web/WebHistory$2;-><init>(Ljavafx/scene/web/WebHistory;Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/scene/web/WebHistory;->maxSize:Ljavafx/beans/property/IntegerProperty;

    .line 263
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory;->maxSize:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory;
    return-object v0
.end method

.method public setMaxSize(I)V
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebHistory;->maxSizeProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 268
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebHistory;->bfl:Lcom/sun/webkit/BackForwardList;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/BackForwardList;->setMaximumSize(I)V

    .line 269
    return-void
.end method
