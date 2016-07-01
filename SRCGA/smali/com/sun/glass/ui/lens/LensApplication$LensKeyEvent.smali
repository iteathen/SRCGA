.class Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LensKeyEvent"
.end annotation


# instance fields
.field private chars:[C

.field private keyCode:I

.field private modifiers:I

.field private type:I

.field private view:Lcom/sun/glass/ui/lens/LensView;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/lens/LensView;III[C)V
    .locals 8

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move v2, p2

    .local v2, "type":I
    move v3, p3

    .local v3, "keyCode":I
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, p5

    .local v5, "chars":[C
    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 213
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    .line 214
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->type:I

    .line 215
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->keyCode:I

    .line 216
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->modifiers:I

    .line 217
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->chars:[C

    .line 218
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 6

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->type:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->keyCode:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->chars:[C

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->modifiers:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensView;->_notifyKey(II[CI)V

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensKeyEvent[view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->view:Lcom/sun/glass/ui/lens/LensView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->keyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",modifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->modifiers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",chars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;->chars:[C

    .line 231
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;
    return-object v0
.end method
