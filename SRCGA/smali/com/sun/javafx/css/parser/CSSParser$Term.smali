.class Lcom/sun/javafx/css/parser/CSSParser$Term;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Term"
.end annotation


# instance fields
.field firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

.field nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

.field nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

.field nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

.field final token:Lcom/sun/javafx/css/parser/Token;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/parser/CSSParser$Term;-><init>(Lcom/sun/javafx/css/parser/Token;)V

    .line 399
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/css/parser/Token;)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v1, p1

    .local v1, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 391
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 392
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 393
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 394
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 395
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 396
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser$Term;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 403
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v2, :cond_1

    .line 405
    move-object v2, v1

    const-string v3, "<nextInSeries>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/CSSParser$Term;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    move-object v2, v1

    const-string v3, "</nextInSeries>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v2, :cond_2

    .line 410
    move-object v2, v1

    const-string v3, "<nextLayer>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/CSSParser$Term;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    move-object v2, v1

    const-string v3, "</nextLayer>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v2, :cond_4

    .line 415
    move-object v2, v1

    const-string v3, "<args>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/CSSParser$Term;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 417
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v2, :cond_3

    .line 418
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/CSSParser$Term;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    :cond_3
    move-object v2, v1

    const-string v3, "</args>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    :cond_4
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser$Term;
    return-object v0
.end method
