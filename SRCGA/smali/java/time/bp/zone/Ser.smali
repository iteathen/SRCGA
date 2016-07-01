.class final Ljava/time/bp/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final SZR:B = 0x1t

.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/Ser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/Ser;
    move v1, p1

    .local v1, "type":B
    move-object v2, p2

    .local v2, "object":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v3, v0

    move v4, v1

    iput-byte v4, v3, Ljava/time/bp/zone/Ser;->type:B

    .line 86
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/bp/zone/Ser;->object:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 133
    .local v1, "type":B
    move v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/time/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v6, v0

    invoke-interface {v6}, Ljava/io/DataInput;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v1, v6

    .line 216
    .local v1, "hiByte":I
    move v6, v1

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    .line 217
    move-object v6, v0

    invoke-interface {v6}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    move-wide v0, v6

    .line 222
    .end local v0    # "in":Ljava/io/DataInput;
    :goto_0
    return-wide v0

    .line 219
    .restart local v0    # "in":Ljava/io/DataInput;
    :cond_0
    move-object v6, v0

    invoke-interface {v6}, Ljava/io/DataInput;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v2, v6

    .line 220
    .local v2, "midByte":I
    move-object v6, v0

    invoke-interface {v6}, Ljava/io/DataInput;->readByte()B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v3, v6

    .line 221
    .local v3, "loByte":I
    move v6, v1

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    move v7, v2

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    move v7, v3

    add-int/2addr v6, v7

    int-to-long v6, v6

    move-wide v4, v6

    .line 222
    .local v4, "tot":J
    move-wide v6, v4

    const-wide/16 v8, 0x384

    mul-long/2addr v6, v8

    const-wide v8, 0x110bc5000L

    sub-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "in":Ljava/io/DataInput;
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 145
    new-instance v2, Ljava/io/StreamCorruptedException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unknown serialized type"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :pswitch_0
    move-object v2, v1

    invoke-static {v2}, Ljava/time/bp/zone/StandardZoneRules;->readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/StandardZoneRules;

    move-result-object v2

    move-object v0, v2

    .line 143
    .end local v0    # "type":B
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "type":B
    :pswitch_1
    move-object v2, v1

    invoke-static {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 143
    :pswitch_2
    move-object v2, v1

    invoke-static {v2}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 184
    .local v1, "offsetByte":I
    move v2, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0

    .restart local v0    # "in":Ljava/io/DataInput;
    :cond_0
    move v2, v1

    const/16 v3, 0x384

    mul-int/lit16 v2, v2, 0x384

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/Ser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/Ser;->object:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/Ser;
    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    const/4 v2, 0x1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/bp/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 101
    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-wide v0, p0

    .local v0, "epochSec":J
    move-object v2, p2

    .local v2, "out":Ljava/io/DataOutput;
    move-wide v4, v0

    const-wide v6, -0x110bc5000L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v0

    const-wide v6, 0x26cb5db00L

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move-wide v4, v0

    const-wide/16 v6, 0x384

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 197
    move-wide v4, v0

    const-wide v6, 0x110bc5000L

    add-long/2addr v4, v6

    const-wide/16 v6, 0x384

    div-long/2addr v4, v6

    long-to-int v4, v4

    move v3, v4

    .line 198
    .local v3, "store":I
    move-object v4, v2

    move v5, v3

    const/16 v6, 0x10

    ushr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 199
    move-object v4, v2

    move v5, v3

    const/16 v6, 0x8

    ushr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 200
    move-object v4, v2

    move v5, v3

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 201
    .line 205
    .end local v3    # "store":I
    :goto_0
    return-void

    .line 202
    :cond_0
    move-object v4, v2

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 203
    move-object v4, v2

    move-wide v5, v0

    invoke-interface {v4, v5, v6}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Ljava/io/DataOutput;
    move-object v3, v2

    move v4, v0

    invoke-interface {v3, v4}, Ljava/io/DataOutput;->writeByte(I)V

    .line 105
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 116
    new-instance v3, Ljava/io/InvalidClassException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unknown serialized type"

    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :pswitch_0
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/StandardZoneRules;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    .line 108
    .line 118
    :goto_0
    return-void

    .line 110
    :pswitch_1
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    .line 111
    goto :goto_0

    .line 113
    :pswitch_2
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 114
    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "offset":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    move v2, v4

    .line 168
    .local v2, "offsetSecs":I
    move v4, v2

    const/16 v5, 0x384

    rem-int/lit16 v4, v4, 0x384

    if-nez v4, :cond_1

    move v4, v2

    const/16 v5, 0x384

    div-int/lit16 v4, v4, 0x384

    :goto_0
    move v3, v4

    .line 169
    .local v3, "offsetByte":I
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 170
    move v4, v3

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 171
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 173
    :cond_0
    return-void

    .line 168
    .end local v3    # "offsetByte":I
    :cond_1
    const/16 v4, 0x7f

    goto :goto_0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/Ser;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    iput-byte v3, v2, Ljava/time/bp/zone/Ser;->type:B

    .line 128
    move-object v2, v0

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/Ser;->type:B

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/time/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Ljava/time/bp/zone/Ser;->object:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/Ser;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/bp/zone/Ser;->type:B

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/Ser;->object:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/bp/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 97
    return-void
.end method
