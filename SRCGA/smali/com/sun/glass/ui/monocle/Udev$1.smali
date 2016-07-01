.class Lcom/sun/glass/ui/monocle/Udev$1;
.super Ljava/lang/Object;
.source "Udev.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/Udev;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/Udev;

.field final synthetic val$event:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/Udev;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/Udev;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/Udev$1;->this$0:Lcom/sun/glass/ui/monocle/Udev;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/Udev$1;->val$event:Ljava/util/Map;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev$1;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/Udev$1;->val$event:Ljava/util/Map;

    const-string v6, "ACTION"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    .line 99
    .local v1, "action":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 101
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 102
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/Udev$1;->this$0:Lcom/sun/glass/ui/monocle/Udev;

    invoke-static {v5}, Lcom/sun/glass/ui/monocle/Udev;->access$000(Lcom/sun/glass/ui/monocle/Udev;)[Lcom/sun/glass/ui/monocle/UdevListener;

    move-result-object v5

    move-object v2, v5

    .line 103
    .local v2, "uls":[Lcom/sun/glass/ui/monocle/UdevListener;
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 105
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 107
    move-object v5, v2

    move v6, v3

    :try_start_1
    aget-object v5, v5, v6

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/Udev$1;->val$event:Ljava/util/Map;

    invoke-interface {v5, v6, v7}, Lcom/sun/glass/ui/monocle/UdevListener;->udevEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 105
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "uls":[Lcom/sun/glass/ui/monocle/UdevListener;
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v4

    throw v5

    .line 108
    .restart local v2    # "uls":[Lcom/sun/glass/ui/monocle/UdevListener;
    .restart local v3    # "i":I
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 109
    .local v4, "e":Ljava/lang/RuntimeException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Exception in udev listener:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 119
    goto :goto_1

    .line 112
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 113
    .local v4, "e":Ljava/lang/Error;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error in udev listener, closing udev"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Error;->printStackTrace()V

    .line 117
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/Udev$1;->this$0:Lcom/sun/glass/ui/monocle/Udev;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/Udev;->close()V

    .line 118
    .line 123
    .end local v2    # "uls":[Lcom/sun/glass/ui/monocle/UdevListener;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/Error;
    :goto_2
    return-void

    :cond_0
    goto :goto_2
.end method
