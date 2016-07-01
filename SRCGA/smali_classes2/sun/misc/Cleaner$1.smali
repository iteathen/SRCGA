.class Lsun/misc/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Cleaner;->clean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/misc/Cleaner;

.field final synthetic val$x:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lsun/misc/Cleaner$1;
    move-object v1, p1

    .local v1, "this$0":Lsun/misc/Cleaner;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lsun/misc/Cleaner$1;->this$0:Lsun/misc/Cleaner;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lsun/misc/Cleaner$1;
    move-object v1, v0

    invoke-virtual {v1}, Lsun/misc/Cleaner$1;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/misc/Cleaner$1;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lsun/misc/Cleaner$1;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/Error;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Cleaner terminated abnormally"

    move-object v4, v0

    iget-object v4, v4, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 149
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 150
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lsun/misc/Cleaner$1;
    return-object v0
.end method
