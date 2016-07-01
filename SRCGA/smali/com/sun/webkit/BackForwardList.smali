.class public final Lcom/sun/webkit/BackForwardList;
.super Ljava/lang/Object;
.source "BackForwardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/webkit/BackForwardList$Entry;
    }
.end annotation


# instance fields
.field private final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/webkit/event/WCChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final page:Lcom/sun/webkit/WebPage;


# direct methods
.method constructor <init>(Lcom/sun/webkit/WebPage;)V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, p1

    .local v1, "page":Lcom/sun/webkit/WebPage;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    .line 155
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/webkit/BackForwardList;->page:Lcom/sun/webkit/WebPage;

    .line 159
    move-object v2, v1

    new-instance v3, Lcom/sun/webkit/BackForwardList$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/webkit/BackForwardList$1;-><init>(Lcom/sun/webkit/BackForwardList;)V

    invoke-virtual {v2, v3}, Lcom/sun/webkit/WebPage;->addLoadListenerClient(Lcom/sun/webkit/LoadListenerClient;)V

    .line 183
    return-void
.end method

.method private canGoBack(I)Z
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canGoForward(I)Z
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 8

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Lcom/sun/webkit/event/WCChangeListener;

    move-object v2, v3

    .line 313
    .local v2, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v3, v2

    new-instance v4, Lcom/sun/webkit/event/WCChangeEvent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/webkit/event/WCChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/sun/webkit/event/WCChangeListener;->stateChanged(Lcom/sun/webkit/event/WCChangeEvent;)V

    .line 314
    goto :goto_0

    .line 315
    .end local v2    # "l":Lcom/sun/webkit/event/WCChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, p1

    .local v1, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 288
    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 294
    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/webkit/BackForwardList;->canGoBack(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public canGoForward()Z
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/webkit/BackForwardList;->canGoForward(I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public contains(Lcom/sun/webkit/BackForwardList$Entry;)Z
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, p1

    .local v1, "e":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/BackForwardList;->indexOf(Lcom/sun/webkit/BackForwardList$Entry;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/sun/webkit/BackForwardList$Entry;
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return-object v0
.end method

.method public getChangeListeners()[Lcom/sun/webkit/event/WCChangeListener;
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sun/webkit/event/WCChangeListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/webkit/event/WCChangeListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return-object v0
.end method

.method public getCurrentEntry()Lcom/sun/webkit/BackForwardList$Entry;
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public getMaximumSize()I
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public goBack()Z
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v2

    move v1, v2

    .line 262
    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/webkit/BackForwardList;->canGoBack(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/BackForwardList;->setCurrentIndex(I)V

    .line 264
    const/4 v2, 0x1

    move v0, v2

    .line 266
    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public goForward()Z
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v2

    move v1, v2

    .line 279
    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/webkit/BackForwardList;->canGoForward(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/webkit/BackForwardList;->setCurrentIndex(I)V

    .line 281
    const/4 v2, 0x1

    move v0, v2

    .line 283
    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public indexOf(Lcom/sun/webkit/BackForwardList$Entry;)I
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, p1

    .local v1, "e":Lcom/sun/webkit/BackForwardList$Entry;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public removeChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v1, p1

    .local v1, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 298
    .line 304
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 301
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList;->listenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_1
    goto :goto_0
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 250
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 211
    return-void
.end method

.method public setMaximumSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 197
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return v0
.end method

.method public toArray()[Lcom/sun/webkit/BackForwardList$Entry;
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v4

    move v1, v4

    .line 239
    .local v1, "size":I
    move v4, v1

    new-array v4, v4, [Lcom/sun/webkit/BackForwardList$Entry;

    move-object v2, v4

    .line 240
    .local v2, "entries":[Lcom/sun/webkit/BackForwardList$Entry;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 241
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v6

    aput-object v6, v4, v5

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList;
    return-object v0
.end method
