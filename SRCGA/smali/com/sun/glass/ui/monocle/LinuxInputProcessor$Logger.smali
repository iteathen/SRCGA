.class public Lcom/sun/glass/ui/monocle/LinuxInputProcessor$Logger;
.super Ljava/lang/Object;
.source "LinuxInputProcessor.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/LinuxInputProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LinuxInputProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputProcessor$Logger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 11

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputProcessor$Logger;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v3

    move-object v2, v3

    .line 47
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "%1$ts.%1$tL %2$s: %3$s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    new-instance v8, Ljava/util/Date;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x2

    move-object v8, v2

    .line 50
    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 48
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v3

    .line 51
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
