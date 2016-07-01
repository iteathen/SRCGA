.class Ljavafx/animation/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Lcom/sun/scenario/animation/shared/PulseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/animation/Animation$1;J)Ljava/lang/Void;
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$1;->lambda$timePulse$25(J)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private synthetic lambda$timePulse$25(J)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$1;
    move-wide v1, p1

    .local v1, "elapsedTime":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/Animation;->impl_timePulse(J)V

    .line 187
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/Animation$1;
    return-object v0
.end method


# virtual methods
.method public timePulse(J)V
    .locals 11

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation$1;
    move-wide v2, p1

    .local v2, "now":J
    move-wide v6, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    invoke-static {v8}, Ljavafx/animation/Animation;->access$000(Ljavafx/animation/Animation;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 178
    .local v4, "elapsedTime":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 179
    .line 189
    :goto_0
    return-void

    .line 181
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    invoke-static {v6}, Ljavafx/animation/Animation;->access$100(Ljavafx/animation/Animation;)Ljava/security/AccessControlContext;

    move-result-object v6

    if-nez v6, :cond_1

    .line 182
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Error: AccessControlContext not captured"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-static {v6, v7, v8}, Ljavafx/animation/Animation$1$$Lambda$1;->lambdaFactory$(Ljavafx/animation/Animation$1;J)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$1;->this$0:Ljavafx/animation/Animation;

    .line 188
    invoke-static {v7}, Ljavafx/animation/Animation;->access$100(Ljavafx/animation/Animation;)Ljava/security/AccessControlContext;

    move-result-object v7

    .line 185
    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 189
    goto :goto_0
.end method
