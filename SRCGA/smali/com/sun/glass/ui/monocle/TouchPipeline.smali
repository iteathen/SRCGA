.class Lcom/sun/glass/ui/monocle/TouchPipeline;
.super Ljava/lang/Object;
.source "TouchPipeline.java"


# instance fields
.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sun/glass/ui/monocle/TouchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private flushState:Lcom/sun/glass/ui/monocle/TouchState;

.field private touch:Lcom/sun/glass/ui/monocle/TouchInput;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchPipeline;->touch:Lcom/sun/glass/ui/monocle/TouchInput;

    .line 33
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchPipeline;->flushState:Lcom/sun/glass/ui/monocle/TouchState;

    return-void
.end method


# virtual methods
.method add(Lcom/sun/glass/ui/monocle/TouchPipeline;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "pipeline":Lcom/sun/glass/ui/monocle/TouchPipeline;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 41
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/monocle/TouchFilter;

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/TouchFilter;->getPriority()I

    move-result v4

    move v2, v4

    .line 88
    .local v2, "priority":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/monocle/TouchFilter;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    .line 97
    :goto_1
    return-void

    .line 92
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/monocle/TouchFilter;

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/TouchFilter;->getPriority()I

    move-result v4

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 93
    .line 96
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v3

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    goto :goto_1

    .line 88
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method addNamedFilter(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "filterName":Ljava/lang/String;
    move-object v4, v1

    :try_start_0
    const-string v5, "SmallMove"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;-><init>()V

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    .line 82
    .line 83
    :goto_0
    return-void

    .line 65
    :cond_0
    move-object v4, v1

    const-string v5, "NearbyPoints"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;-><init>()V

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    goto :goto_0

    .line 67
    :cond_1
    move-object v4, v1

    const-string v5, "AssignPointID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;-><init>()V

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V

    goto :goto_0

    .line 71
    :cond_2
    move-object v4, v1

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.sun.glass.ui.monocle."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TouchFilter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 75
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v3, v4

    .line 76
    .local v3, "loader":Ljava/lang/ClassLoader;
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/monocle/TouchFilter;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addFilter(Lcom/sun/glass/ui/monocle/TouchFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot install touch filter \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method addNamedFilters(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "filterNameList":Ljava/lang/String;
    move-object v8, v1

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 50
    .local v2, "touchFilterNames":[Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 51
    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 52
    .local v6, "touchFilterName":Ljava/lang/String;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 53
    .local v7, "s":Ljava/lang/String;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 54
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addNamedFilter(Ljava/lang/String;)V

    .line 51
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    .end local v6    # "touchFilterName":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 10

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 101
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/monocle/TouchFilter;

    move-object v3, v4

    .line 102
    .local v3, "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v4, :cond_0

    .line 103
    const-string v4, "Applying %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/glass/ui/monocle/TouchFilter;->filter(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v4, 0x1

    move v0, v4

    .line 109
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    .end local v3    # "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    :goto_1
    return v0

    .line 100
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    .restart local v3    # "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method flush()V
    .locals 11

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    const/4 v5, 0x0

    move v1, v5

    .local v1, "i":I
    :goto_0
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 126
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/monocle/TouchFilter;

    move-object v2, v5

    .line 127
    .local v2, "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    :goto_1
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchPipeline;->flushState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-interface {v5, v6}, Lcom/sun/glass/ui/monocle/TouchFilter;->flush(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    sget-object v5, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v5, v5, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v5, :cond_0

    .line 129
    const-string v5, "Flushing %s from %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/TouchPipeline;->flushState:Lcom/sun/glass/ui/monocle/TouchState;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .line 132
    .local v3, "consumed":Z
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .local v4, "j":I
    :goto_2
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    move v5, v3

    if-nez v5, :cond_1

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/monocle/TouchFilter;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchPipeline;->flushState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-interface {v5, v6}, Lcom/sun/glass/ui/monocle/TouchFilter;->filter(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v5

    move v3, v5

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 135
    :cond_1
    move v5, v3

    if-nez v5, :cond_2

    .line 136
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchPipeline;->touch:Lcom/sun/glass/ui/monocle/TouchInput;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchPipeline;->flushState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/TouchInput;->setState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 138
    :cond_2
    goto :goto_1

    .line 125
    .end local v3    # "consumed":Z
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "filter":Lcom/sun/glass/ui/monocle/TouchFilter;
    :cond_4
    return-void
.end method

.method pushState(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    sget-object v2, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v2, v2, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "Pushing %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchPipeline;->filter(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchPipeline;->touch:Lcom/sun/glass/ui/monocle/TouchInput;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchInput;->setState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 119
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "TouchPipeline["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 145
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 146
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 147
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchPipeline;->filters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 148
    move-object v3, v1

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 152
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchPipeline;
    return-object v0
.end method
