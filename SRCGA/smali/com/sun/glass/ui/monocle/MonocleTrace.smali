.class Lcom/sun/glass/ui/monocle/MonocleTrace;
.super Ljava/lang/Object;
.source "MonocleTrace.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleTrace;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 40
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 42
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v5

    .line 43
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 44
    move-object v5, v3

    monitor-exit v5

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method static varargs traceConfig(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "traceConfig"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/glass/ui/monocle/MonocleTrace;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method static varargs traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "traceEvent"

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/glass/ui/monocle/MonocleTrace;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method
