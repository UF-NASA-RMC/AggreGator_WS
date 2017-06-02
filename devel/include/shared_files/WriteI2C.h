// Generated by gencpp from file shared_files/WriteI2C.msg
// DO NOT EDIT!


#ifndef SHARED_FILES_MESSAGE_WRITEI2C_H
#define SHARED_FILES_MESSAGE_WRITEI2C_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace shared_files
{
template <class ContainerAllocator>
struct WriteI2C_
{
  typedef WriteI2C_<ContainerAllocator> Type;

  WriteI2C_()
    : addr(0)
    , data()  {
    }
  WriteI2C_(const ContainerAllocator& _alloc)
    : addr(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _addr_type;
  _addr_type addr;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::shared_files::WriteI2C_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::shared_files::WriteI2C_<ContainerAllocator> const> ConstPtr;

}; // struct WriteI2C_

typedef ::shared_files::WriteI2C_<std::allocator<void> > WriteI2C;

typedef boost::shared_ptr< ::shared_files::WriteI2C > WriteI2CPtr;
typedef boost::shared_ptr< ::shared_files::WriteI2C const> WriteI2CConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::shared_files::WriteI2C_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::shared_files::WriteI2C_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace shared_files

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'shared_files': ['/home/issa/AGGREGATOR_WS/src/shared_files/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::shared_files::WriteI2C_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::shared_files::WriteI2C_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::WriteI2C_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::WriteI2C_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::WriteI2C_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::WriteI2C_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::shared_files::WriteI2C_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a303b66127bb26c7a153000ea65ec55";
  }

  static const char* value(const ::shared_files::WriteI2C_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a303b66127bb26cULL;
  static const uint64_t static_value2 = 0x7a153000ea65ec55ULL;
};

template<class ContainerAllocator>
struct DataType< ::shared_files::WriteI2C_<ContainerAllocator> >
{
  static const char* value()
  {
    return "shared_files/WriteI2C";
  }

  static const char* value(const ::shared_files::WriteI2C_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::shared_files::WriteI2C_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 addr\n\
uint8[] data\n\
";
  }

  static const char* value(const ::shared_files::WriteI2C_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::shared_files::WriteI2C_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.addr);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WriteI2C_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::shared_files::WriteI2C_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::shared_files::WriteI2C_<ContainerAllocator>& v)
  {
    s << indent << "addr: ";
    Printer<int8_t>::stream(s, indent + "  ", v.addr);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SHARED_FILES_MESSAGE_WRITEI2C_H