.class public final Lcom/sun/webkit/BackForwardList$Entry;
.super Ljava/lang/Object;
.source "BackForwardList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/webkit/BackForwardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private children:[Lcom/sun/webkit/BackForwardList$Entry;

.field private icon:Lcom/sun/webkit/graphics/WCImage;

.field private isTargetItem:Z

.field private lastVisitedDate:Ljava/util/Date;

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

.field private pitem:J

.field private ppage:J

.field private target:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(JJ)V
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-wide v1, p1

    .local v1, "pitem":J
    move-wide v3, p3

    .local v3, "ppage":J
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    .line 49
    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/webkit/BackForwardList$Entry;->ppage:J

    .line 134
    move-object v5, v0

    new-instance v6, Ljava/util/LinkedList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v5, Lcom/sun/webkit/BackForwardList$Entry;->listenerList:Ljava/util/List;

    .line 61
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    .line 62
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/webkit/BackForwardList$Entry;->ppage:J

    .line 68
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getURL()Ljava/net/URL;

    move-result-object v5

    .line 69
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 70
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v5

    .line 71
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getIcon()Lcom/sun/webkit/graphics/WCImage;

    move-result-object v5

    .line 72
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getTarget()Ljava/lang/String;

    move-result-object v5

    .line 73
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->isTargetItem()Z

    move-result v5

    .line 74
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList$Entry;->getChildren()[Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v5

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sun/webkit/BackForwardList$Entry;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/webkit/BackForwardList$Entry;->updateLastVisitedDate()V

    return-void
.end method

.method private notifyItemChanged()V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/webkit/BackForwardList$Entry;->listenerList:Ljava/util/List;

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

    .line 85
    .local v2, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v3, v2

    new-instance v4, Lcom/sun/webkit/event/WCChangeEvent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/webkit/event/WCChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/sun/webkit/event/WCChangeListener;->stateChanged(Lcom/sun/webkit/event/WCChangeEvent;)V

    .line 86
    goto :goto_0

    .line 87
    .end local v2    # "l":Lcom/sun/webkit/event/WCChangeListener;
    :cond_0
    return-void
.end method

.method private notifyItemDestroyed()V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    .line 80
    return-void
.end method

.method private updateLastVisitedDate()V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, v0

    new-instance v2, Ljava/util/Date;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/sun/webkit/BackForwardList$Entry;->lastVisitedDate:Ljava/util/Date;

    .line 115
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/webkit/BackForwardList$Entry;->notifyItemChanged()V

    .line 116
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, p1

    .local v1, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 139
    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->listenerList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 141
    goto :goto_0
.end method

.method public getChildren()[Lcom/sun/webkit/BackForwardList$Entry;
    .locals 8

    .prologue
    .line 123
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->children:[Lcom/sun/webkit/BackForwardList$Entry;

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v1

    .restart local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->children:[Lcom/sun/webkit/BackForwardList$Entry;

    goto :goto_0
.end method

.method public getIcon()Lcom/sun/webkit/graphics/WCImage;
    .locals 8

    .prologue
    .line 102
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->icon:Lcom/sun/webkit/graphics/WCImage;

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v1

    .restart local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->icon:Lcom/sun/webkit/graphics/WCImage;

    goto :goto_0
.end method

.method public getLastVisitedDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/BackForwardList$Entry;->lastVisitedDate:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v0

    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/BackForwardList$Entry;->lastVisitedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 8

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->target:Ljava/lang/String;

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v1

    .restart local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v1

    const-string v3, ""

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->target:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->title:Ljava/lang/String;

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v1

    .restart local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v1

    const-string v3, ""

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v0

    :try_start_0
    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->url:Ljava/net/URL;

    :goto_0
    move-object v0, v2

    .line 93
    .end local v0    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :goto_1
    return-object v0

    .line 91
    .restart local v0    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v0

    const-string v3, ""

    invoke-static {v3}, Lcom/sun/webkit/network/URLs;->newURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 93
    .local v1, "ex":Ljava/net/MalformedURLException;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->url:Ljava/net/URL;

    move-object v0, v2

    goto :goto_1
.end method

.method public isTargetItem()Z
    .locals 8

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->pitem:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->isTargetItem:Z

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return v1

    .restart local v1    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput-boolean v4, v3, Lcom/sun/webkit/BackForwardList$Entry;->isTargetItem:Z

    goto :goto_0
.end method

.method public removeChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v1, p1

    .local v1, "l":Lcom/sun/webkit/event/WCChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 145
    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/webkit/BackForwardList$Entry;->listenerList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 147
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/BackForwardList$Entry;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList$Entry;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 129
    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList$Entry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 130
    invoke-virtual {v2}, Lcom/sun/webkit/BackForwardList$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/BackForwardList$Entry;
    return-object v0
.end method
