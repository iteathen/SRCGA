.class public final enum Ljavafx/concurrent/Worker$State;
.super Ljava/lang/Enum;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/concurrent/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/concurrent/Worker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/concurrent/Worker$State;

.field public static final enum CANCELLED:Ljavafx/concurrent/Worker$State;

.field public static final enum FAILED:Ljavafx/concurrent/Worker$State;

.field public static final enum READY:Ljavafx/concurrent/Worker$State;

.field public static final enum RUNNING:Ljavafx/concurrent/Worker$State;

.field public static final enum SCHEDULED:Ljavafx/concurrent/Worker$State;

.field public static final enum SUCCEEDED:Ljavafx/concurrent/Worker$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 131
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "READY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    .line 138
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCHEDULED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    .line 143
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RUNNING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    .line 148
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SUCCEEDED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->SUCCEEDED:Ljavafx/concurrent/Worker$State;

    .line 153
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CANCELLED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    .line 159
    new-instance v0, Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FAILED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/concurrent/Worker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/concurrent/Worker$State;->FAILED:Ljavafx/concurrent/Worker$State;

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [Ljavafx/concurrent/Worker$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/concurrent/Worker$State;->SUCCEEDED:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/concurrent/Worker$State;->FAILED:Ljavafx/concurrent/Worker$State;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/concurrent/Worker$State;->$VALUES:[Ljavafx/concurrent/Worker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Worker$State;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/concurrent/Worker$State;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/concurrent/Worker$State;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/concurrent/Worker$State;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/concurrent/Worker$State;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Ljavafx/concurrent/Worker$State;->$VALUES:[Ljavafx/concurrent/Worker$State;

    invoke-virtual {v0}, [Ljavafx/concurrent/Worker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/concurrent/Worker$State;

    return-object v0
.end method
