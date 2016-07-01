.class public final enum Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum STANDARD:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 505
    new-instance v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UTC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 507
    new-instance v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 509
    new-instance v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STANDARD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 503
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

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
    .line 503
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 3

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0}, [Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "standardOffset":Ljava/time/ZoneOffset;
    move-object v3, p3

    .local v3, "wallOffset":Ljava/time/ZoneOffset;
    sget-object v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$bp$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 539
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :goto_0
    return-object v0

    .line 531
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :pswitch_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    sget-object v6, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 532
    .local v4, "difference":I
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 535
    .end local v4    # "difference":I
    :pswitch_1
    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 536
    .restart local v4    # "difference":I
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
