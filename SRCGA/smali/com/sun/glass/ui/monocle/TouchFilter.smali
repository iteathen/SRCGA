.class interface abstract Lcom/sun/glass/ui/monocle/TouchFilter;
.super Ljava/lang/Object;
.source "TouchFilter.java"


# static fields
.field public static final PRIORITY_ID:I = 0x0

.field public static final PRIORITY_POST_ID:I = -0x64

.field public static final PRIORITY_PRE_ID:I = 0x64


# virtual methods
.method public abstract filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
.end method

.method public abstract flush(Lcom/sun/glass/ui/monocle/TouchState;)Z
.end method

.method public abstract getPriority()I
.end method
