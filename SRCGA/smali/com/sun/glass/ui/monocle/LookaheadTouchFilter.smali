.class Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
.super Ljava/lang/Object;
.source "LookaheadTouchFilter.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/TouchFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;
    }
.end annotation


# instance fields
.field private assignIDs:Z

.field private filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

.field private previousState:Lcom/sun/glass/ui/monocle/TouchState;

.field private tmpState:Lcom/sun/glass/ui/monocle/TouchState;


# direct methods
.method constructor <init>(Z)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    move v1, p1

    .local v1, "assignIDs":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    .line 31
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->tmpState:Lcom/sun/glass/ui/monocle/TouchState;

    .line 53
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->CLEAN:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 62
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->assignIDs:Z

    .line 63
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/TouchState;->sortPointsByID()V

    .line 68
    sget-object v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$1;->$SwitchMap$com$sun$glass$ui$monocle$LookaheadTouchFilter$FilterState:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 95
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    :goto_0
    return v0

    .line 70
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    :pswitch_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 71
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_UNMODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 72
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 75
    :pswitch_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->tmpState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->tmpState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 78
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->assignIDs:Z

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/TouchState;->canBeFoldedWith(Lcom/sun/glass/ui/monocle/TouchState;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_MODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 81
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 83
    :pswitch_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->assignIDs:Z

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/TouchState;->canBeFoldedWith(Lcom/sun/glass/ui/monocle/TouchState;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 85
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 88
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->tmpState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->tmpState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 91
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_UNMODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 92
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public flush(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    sget-object v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$1;->$SwitchMap$com$sun$glass$ui$monocle$LookaheadTouchFilter$FilterState:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 108
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    :goto_0
    return v0

    .line 104
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 105
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->CLEAN:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 106
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    const/16 v1, 0x65

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookahead[previousState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->previousState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filterState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;->filterState:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
    return-object v0
.end method
