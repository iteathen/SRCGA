.class final Lcom/sun/prism/impl/PrismTrace$1;
.super Ljava/lang/Thread;
.source "PrismTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/PrismTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/PrismTrace$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/PrismTrace$1;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final Texture resources:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_TEX:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 48
    invoke-static {v3}, Lcom/sun/prism/impl/PrismTrace;->access$000(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_RTT:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 49
    invoke-static {v3}, Lcom/sun/prism/impl/PrismTrace;->access$000(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/prism/impl/PrismTrace$SummaryType;->TYPE_ALL:Lcom/sun/prism/impl/PrismTrace$SummaryType;

    .line 50
    invoke-static {v3}, Lcom/sun/prism/impl/PrismTrace;->access$000(Lcom/sun/prism/impl/PrismTrace$SummaryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    return-void
.end method
