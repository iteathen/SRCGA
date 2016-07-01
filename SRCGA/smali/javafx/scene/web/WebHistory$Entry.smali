.class public final Ljavafx/scene/web/WebHistory$Entry;
.super Ljava/lang/Object;
.source "WebHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final peer:Lcom/sun/webkit/BackForwardList$Entry;

.field final synthetic this$0:Ljavafx/scene/web/WebHistory;

.field private final title:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Ljavafx/scene/web/WebHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/web/WebHistory$Entry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;)V
    .locals 10

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebHistory;
    move-object v2, p2

    .local v2, "entry":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebHistory$Entry;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "title"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebHistory$Entry;->title:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 80
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "lastVisitedDate"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebHistory$Entry;->lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 84
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList$Entry;->getURL()Ljava/net/URL;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/web/WebHistory$Entry;->url:Ljava/net/URL;

    .line 85
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebHistory$Entry;->title:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList$Entry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 86
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebHistory$Entry;->lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 87
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/web/WebHistory$Entry;->peer:Lcom/sun/webkit/BackForwardList$Entry;

    .line 89
    move-object v3, v2

    new-instance v4, Ljavafx/scene/web/WebHistory$Entry$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/web/WebHistory$Entry$1;-><init>(Ljavafx/scene/web/WebHistory$Entry;Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;)V

    invoke-virtual {v3, v4}, Lcom/sun/webkit/BackForwardList$Entry;->addChangeListener(Lcom/sun/webkit/event/WCChangeListener;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;Ljavafx/scene/web/WebHistory$1;)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebHistory;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v3, p3

    .local v3, "x2":Ljavafx/scene/web/WebHistory$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/web/WebHistory$Entry;-><init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;)V

    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/web/WebHistory$Entry;)Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->title:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/web/WebHistory$Entry;)Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method


# virtual methods
.method public getLastVisitedDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->title:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    sget-boolean v1, Ljavafx/scene/web/WebHistory$Entry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->url:Ljava/net/URL;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 114
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method isPeer(Lcom/sun/webkit/BackForwardList$Entry;)Z
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, p1

    .local v1, "entry":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebHistory$Entry;->peer:Lcom/sun/webkit/BackForwardList$Entry;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return v0

    .restart local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lastVisitedDateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->lastVisitedDate:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method public titleProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebHistory$Entry;->title:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebHistory$Entry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 146
    invoke-virtual {v2}, Ljavafx/scene/web/WebHistory$Entry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 147
    invoke-virtual {v2}, Ljavafx/scene/web/WebHistory$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebHistory$Entry;
    return-object v0
.end method
