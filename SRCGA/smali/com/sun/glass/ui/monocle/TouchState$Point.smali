.class Lcom/sun/glass/ui/monocle/TouchState$Point;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Point"
.end annotation


# instance fields
.field id:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyTo(Lcom/sun/glass/ui/monocle/TouchState$Point;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 57
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 58
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState$Point;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchState.Point[id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState$Point;
    return-object v0
.end method
